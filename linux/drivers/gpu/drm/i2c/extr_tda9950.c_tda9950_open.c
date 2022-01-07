
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9950_priv {int adap; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int CCR_ON ;
 int CCR_RESET ;
 int CEC_LOG_ADDR_INVALID ;
 int REG_CCR ;
 int msleep (int) ;
 int tda9950_cec_adap_log_addr (int ,int ) ;
 int tda9950_glue_open (struct tda9950_priv*) ;
 int tda9950_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int tda9950_open(struct tda9950_priv *priv)
{
 struct i2c_client *client = priv->client;
 int ret;

 ret = tda9950_glue_open(priv);
 if (ret)
  return ret;


 tda9950_write(client, REG_CCR, CCR_RESET);
 msleep(250);

 tda9950_cec_adap_log_addr(priv->adap, CEC_LOG_ADDR_INVALID);


 tda9950_write(client, REG_CCR, CCR_ON);

 return 0;
}
