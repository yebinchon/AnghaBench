
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct touchpad_protocol {unsigned int number_of_fingers; } ;
struct spi_packet {scalar_t__ flags; scalar_t__ device; int data; int length; int remaining; int offset; } ;
struct message {int length; struct touchpad_protocol touchpad; int keyboard; } ;
struct applespi_data {int read_active; int write_active; unsigned int saved_msg_len; TYPE_1__* spi; scalar_t__ msg_buf; int * rx_buffer; int cmd_msg_lock; int drain_complete; scalar_t__ drain; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int APPLESPI_PACKET_SIZE ;
 unsigned int MAX_FINGERS ;
 unsigned int MAX_PKTS_PER_MSG ;
 unsigned int MSG_HEADER_SIZE ;
 scalar_t__ PACKET_DEV_KEYB ;
 scalar_t__ PACKET_DEV_TPAD ;
 scalar_t__ PACKET_TYPE_READ ;
 scalar_t__ PACKET_TYPE_WRITE ;
 int applespi_debug_print_read_packet (struct applespi_data*,struct spi_packet*) ;
 int applespi_handle_cmd_response (struct applespi_data*,struct spi_packet*,struct message*) ;
 int applespi_handle_keyboard_event (struct applespi_data*,int *) ;
 int applespi_msg_complete (struct applespi_data*,int,int) ;
 int applespi_verify_crc (struct applespi_data*,int *,unsigned int) ;
 int dev_warn_ratelimited (int *,char*,int,...) ;
 int fingers ;
 int le16_to_cpu (int ) ;
 int memcpy (scalar_t__,int *,unsigned int) ;
 int report_tp_state (struct applespi_data*,struct touchpad_protocol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 size_t struct_size (struct touchpad_protocol*,int ,unsigned int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void applespi_got_data(struct applespi_data *applespi)
{
 struct spi_packet *packet;
 struct message *message;
 unsigned int msg_len;
 unsigned int off;
 unsigned int rem;
 unsigned int len;


 if (!applespi_verify_crc(applespi, applespi->rx_buffer,
     APPLESPI_PACKET_SIZE)) {
  unsigned long flags;

  spin_lock_irqsave(&applespi->cmd_msg_lock, flags);

  if (applespi->drain) {
   applespi->read_active = 0;
   applespi->write_active = 0;

   wake_up_all(&applespi->drain_complete);
  }

  spin_unlock_irqrestore(&applespi->cmd_msg_lock, flags);

  return;
 }

 packet = (struct spi_packet *)applespi->rx_buffer;

 applespi_debug_print_read_packet(applespi, packet);

 off = le16_to_cpu(packet->offset);
 rem = le16_to_cpu(packet->remaining);
 len = le16_to_cpu(packet->length);

 if (len > sizeof(packet->data)) {
  dev_warn_ratelimited(&applespi->spi->dev,
         "Received corrupted packet (invalid packet length %u)\n",
         len);
  goto msg_complete;
 }


 if (rem > 0 || off > 0) {
  if (off != applespi->saved_msg_len) {
   dev_warn_ratelimited(&applespi->spi->dev,
          "Received unexpected offset (got %u, expected %u)\n",
          off, applespi->saved_msg_len);
   goto msg_complete;
  }

  if (off + rem > MAX_PKTS_PER_MSG * APPLESPI_PACKET_SIZE) {
   dev_warn_ratelimited(&applespi->spi->dev,
          "Received message too large (size %u)\n",
          off + rem);
   goto msg_complete;
  }

  if (off + len > MAX_PKTS_PER_MSG * APPLESPI_PACKET_SIZE) {
   dev_warn_ratelimited(&applespi->spi->dev,
          "Received message too large (size %u)\n",
          off + len);
   goto msg_complete;
  }

  memcpy(applespi->msg_buf + off, &packet->data, len);
  applespi->saved_msg_len += len;

  if (rem > 0)
   return;

  message = (struct message *)applespi->msg_buf;
  msg_len = applespi->saved_msg_len;
 } else {
  message = (struct message *)&packet->data;
  msg_len = len;
 }


 if (!applespi_verify_crc(applespi, (u8 *)message, msg_len))
  goto msg_complete;

 if (le16_to_cpu(message->length) != msg_len - MSG_HEADER_SIZE - 2) {
  dev_warn_ratelimited(&applespi->spi->dev,
         "Received corrupted packet (invalid message length %u - expected %u)\n",
         le16_to_cpu(message->length),
         msg_len - MSG_HEADER_SIZE - 2);
  goto msg_complete;
 }


 if (packet->flags == PACKET_TYPE_READ &&
     packet->device == PACKET_DEV_KEYB) {
  applespi_handle_keyboard_event(applespi, &message->keyboard);

 } else if (packet->flags == PACKET_TYPE_READ &&
     packet->device == PACKET_DEV_TPAD) {
  struct touchpad_protocol *tp;
  size_t tp_len;

  tp = &message->touchpad;
  tp_len = struct_size(tp, fingers, tp->number_of_fingers);

  if (le16_to_cpu(message->length) + 2 != tp_len) {
   dev_warn_ratelimited(&applespi->spi->dev,
          "Received corrupted packet (invalid message length %u - num-fingers %u, tp-len %zu)\n",
          le16_to_cpu(message->length),
          tp->number_of_fingers, tp_len);
   goto msg_complete;
  }

  if (tp->number_of_fingers > MAX_FINGERS) {
   dev_warn_ratelimited(&applespi->spi->dev,
          "Number of reported fingers (%u) exceeds max (%u))\n",
          tp->number_of_fingers,
          MAX_FINGERS);
   tp->number_of_fingers = MAX_FINGERS;
  }

  report_tp_state(applespi, tp);

 } else if (packet->flags == PACKET_TYPE_WRITE) {
  applespi_handle_cmd_response(applespi, packet, message);
 }

msg_complete:
 applespi->saved_msg_len = 0;

 applespi_msg_complete(applespi, packet->flags == PACKET_TYPE_WRITE,
         1);
}
