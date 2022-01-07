
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct migor_ts_priv {int input; TYPE_1__* client; } ;
typedef int irqreturn_t ;
typedef int buf ;
struct TYPE_3__ {int dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;



 int IRQ_HANDLED ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (TYPE_1__*,int*,int) ;
 int i2c_master_send (TYPE_1__*,int*,int) ;
 int input_report_abs (int ,int ,unsigned short) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static irqreturn_t migor_ts_isr(int irq, void *dev_id)
{
 struct migor_ts_priv *priv = dev_id;
 unsigned short xpos, ypos;
 unsigned char event;
 u_int8_t buf[16];
 memset(buf, 0, sizeof(buf));


 buf[0] = 0;
 if (i2c_master_send(priv->client, buf, 1) != 1) {
  dev_err(&priv->client->dev, "Unable to write i2c index\n");
  goto out;
 }


 if (i2c_master_recv(priv->client, buf, sizeof(buf)) != sizeof(buf)) {
  dev_err(&priv->client->dev, "Unable to read i2c page\n");
  goto out;
 }

 ypos = ((buf[9] & 0x03) << 8 | buf[8]);
 xpos = ((buf[11] & 0x03) << 8 | buf[10]);
 event = buf[12];

 switch (event) {
 case 130:
 case 128:
  input_report_key(priv->input, BTN_TOUCH, 1);
  input_report_abs(priv->input, ABS_X, ypos);
  input_report_abs(priv->input, ABS_Y, xpos);
  input_sync(priv->input);
  break;

 case 129:
  input_report_key(priv->input, BTN_TOUCH, 0);
  input_sync(priv->input);
  break;
 }

 out:
 return IRQ_HANDLED;
}
