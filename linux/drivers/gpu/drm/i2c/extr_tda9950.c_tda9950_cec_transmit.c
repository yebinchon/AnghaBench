
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tda9950_priv {int client; } ;
struct cec_msg {int len; int msg; } ;
struct cec_adapter {struct tda9950_priv* priv; } ;


 int CDR1_REQ ;
 int CEC_MAX_MSG_SIZE ;
 int REG_CCONR ;
 int REG_CDR0 ;
 int memcpy (int*,int ,int) ;
 int tda9950_write (int ,int ,int) ;
 int tda9950_write_range (int ,int ,int*,int) ;

__attribute__((used)) static int tda9950_cec_transmit(struct cec_adapter *adap, u8 attempts,
    u32 signal_free_time, struct cec_msg *msg)
{
 struct tda9950_priv *priv = adap->priv;
 u8 buf[CEC_MAX_MSG_SIZE + 2];

 buf[0] = 2 + msg->len;
 buf[1] = CDR1_REQ;
 memcpy(buf + 2, msg->msg, msg->len);

 if (attempts > 5)
  attempts = 5;

 tda9950_write(priv->client, REG_CCONR, attempts);

 return tda9950_write_range(priv->client, REG_CDR0, buf, 2 + msg->len);
}
