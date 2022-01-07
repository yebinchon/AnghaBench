
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom {int idx; int* data; TYPE_1__* dev; } ;
struct serio {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int DATA_SIZE ;
 int IRQ_HANDLED ;
 scalar_t__ PACKET_LENGTH ;
 int dev_dbg (int *,char*,int) ;
 struct wacom* serio_get_drvdata (struct serio*) ;
 int wacom_clear_data_buf (struct wacom*) ;
 int wacom_handle_packet (struct wacom*) ;
 int wacom_handle_response (struct wacom*) ;

__attribute__((used)) static irqreturn_t wacom_interrupt(struct serio *serio, unsigned char data,
       unsigned int flags)
{
 struct wacom *wacom = serio_get_drvdata(serio);

 if (data & 0x80)
  wacom->idx = 0;
 if (data == '\r' && !(wacom->data[0] & 0x80)) {
  wacom_handle_response(wacom);
  wacom_clear_data_buf(wacom);
  return IRQ_HANDLED;
 }


 if (wacom->idx > (DATA_SIZE - 2)) {
  dev_dbg(&wacom->dev->dev,
   "throwing away %d bytes of garbage\n", wacom->idx);
  wacom_clear_data_buf(wacom);
 }
 wacom->data[wacom->idx++] = data;

 if (wacom->idx == PACKET_LENGTH && (wacom->data[0] & 0x80)) {
  wacom_handle_packet(wacom);
  wacom_clear_data_buf(wacom);
 }

 return IRQ_HANDLED;
}
