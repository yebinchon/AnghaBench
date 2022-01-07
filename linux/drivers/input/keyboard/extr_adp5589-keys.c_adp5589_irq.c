
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct adp5589_kpad {int input; struct i2c_client* client; } ;
typedef int irqreturn_t ;


 int ADP5589_5_INT_STATUS ;
 int ADP5589_5_STATUS ;
 int EVENT_INT ;
 int IRQ_HANDLED ;
 int KEC ;
 int OVRFLOW_INT ;
 int adp5589_read (struct i2c_client*,int ) ;
 int adp5589_report_events (struct adp5589_kpad*,int) ;
 int adp5589_write (struct i2c_client*,int ,int) ;
 int dev_err (int *,char*) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t adp5589_irq(int irq, void *handle)
{
 struct adp5589_kpad *kpad = handle;
 struct i2c_client *client = kpad->client;
 int status, ev_cnt;

 status = adp5589_read(client, ADP5589_5_INT_STATUS);

 if (status & OVRFLOW_INT)
  dev_err(&client->dev, "Event Overflow Error\n");

 if (status & EVENT_INT) {
  ev_cnt = adp5589_read(client, ADP5589_5_STATUS) & KEC;
  if (ev_cnt) {
   adp5589_report_events(kpad, ev_cnt);
   input_sync(kpad->input);
  }
 }

 adp5589_write(client, ADP5589_5_INT_STATUS, status);

 return IRQ_HANDLED;
}
