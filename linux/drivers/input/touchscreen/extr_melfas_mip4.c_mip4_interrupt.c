
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct mip4_ts {int* buf; int input; scalar_t__ event_size; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
typedef int irqreturn_t ;
typedef int cmd ;


 int BIT (int) ;
 int IRQ_HANDLED ;
 unsigned int MIP4_R0_EVENT ;
 unsigned int MIP4_R1_EVENT_PACKET_DATA ;
 unsigned int MIP4_R1_EVENT_PACKET_INFO ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_err (int *,char*,...) ;
 int input_sync (int ) ;
 int mip4_handle_packet (struct mip4_ts*,int*) ;
 int mip4_i2c_xfer (struct mip4_ts*,unsigned int*,int,int*,unsigned int) ;

__attribute__((used)) static irqreturn_t mip4_interrupt(int irq, void *dev_id)
{
 struct mip4_ts *ts = dev_id;
 struct i2c_client *client = ts->client;
 unsigned int i;
 int error;
 u8 cmd[2];
 u8 size;
 bool alert;


 cmd[0] = MIP4_R0_EVENT;
 cmd[1] = MIP4_R1_EVENT_PACKET_INFO;
 error = mip4_i2c_xfer(ts, cmd, sizeof(cmd), ts->buf, 1);
 if (error) {
  dev_err(&client->dev,
   "Failed to read packet info: %d\n", error);
  goto out;
 }

 size = ts->buf[0] & 0x7F;
 alert = ts->buf[0] & BIT(7);
 dev_dbg(&client->dev, "packet size: %d, alert: %d\n", size, alert);


 if (!size) {
  dev_err(&client->dev, "Empty packet\n");
  goto out;
 }


 cmd[0] = MIP4_R0_EVENT;
 cmd[1] = MIP4_R1_EVENT_PACKET_DATA;
 error = mip4_i2c_xfer(ts, cmd, sizeof(cmd), ts->buf, size);
 if (error) {
  dev_err(&client->dev,
   "Failed to read packet data: %d\n", error);
  goto out;
 }

 if (alert) {
  dev_dbg(&client->dev, "Alert: %d\n", ts->buf[0]);
 } else {
  for (i = 0; i < size; i += ts->event_size) {
   error = mip4_handle_packet(ts, &ts->buf[i]);
   if (error)
    break;
  }

  input_sync(ts->input);
 }

out:
 return IRQ_HANDLED;
}
