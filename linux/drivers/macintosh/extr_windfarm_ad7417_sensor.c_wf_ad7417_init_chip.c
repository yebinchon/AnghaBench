
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wf_ad7417_priv {int config; TYPE_1__* i2c; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (TYPE_1__*,int*,int) ;
 int i2c_master_send (TYPE_1__*,int*,int) ;

__attribute__((used)) static void wf_ad7417_init_chip(struct wf_ad7417_priv *pv)
{
 int rc;
 u8 buf[2];
 u8 config = 0;
 buf[0] = 5;
 buf[1] = 0;
 i2c_master_send(pv->i2c, buf, 2);


 buf[0] = 1;
 rc = i2c_master_send(pv->i2c, buf, 1);
 if (rc > 0) {
  rc = i2c_master_recv(pv->i2c, buf, 1);
  if (rc > 0) {
   config = buf[0];

   dev_dbg(&pv->i2c->dev, "ADC config reg: %02x\n",
    config);


   config &= 0xfe;
   buf[0] = 1;
   buf[1] = config;
   rc = i2c_master_send(pv->i2c, buf, 2);
  }
 }
 if (rc <= 0)
  dev_err(&pv->i2c->dev, "Error reading ADC config\n");

 pv->config = config;
}
