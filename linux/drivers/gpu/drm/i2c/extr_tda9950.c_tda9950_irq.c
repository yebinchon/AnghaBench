
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int len; int msg; } ;
struct tda9950_priv {TYPE_1__* client; TYPE_3__ rx_msg; int adap; int open; } ;
typedef int irqreturn_t ;
typedef int buf ;
struct TYPE_4__ {int dev; } ;


 int CCONR_RETRY_MASK ;





 int CEC_MAX_MSG_SIZE ;
 unsigned int CEC_TX_STATUS_ARB_LOST ;
 unsigned int CEC_TX_STATUS_ERROR ;
 unsigned int CEC_TX_STATUS_MAX_RETRIES ;
 unsigned int CEC_TX_STATUS_NACK ;
 unsigned int CEC_TX_STATUS_OK ;
 int CSR_INT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_CCONR ;
 int REG_CDR0 ;
 int REG_CSR ;
 int cec_received_msg (int ,TYPE_3__*) ;
 int cec_transmit_done (int ,unsigned int,int,int,int ,int) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int memcpy (int ,int*,int) ;
 int tda9950_read (TYPE_1__*,int ) ;
 int tda9950_read_range (TYPE_1__*,int ,int*,int) ;

__attribute__((used)) static irqreturn_t tda9950_irq(int irq, void *data)
{
 struct tda9950_priv *priv = data;
 unsigned int tx_status;
 u8 csr, cconr, buf[19];
 u8 arb_lost_cnt, nack_cnt, err_cnt;

 if (!priv->open)
  return IRQ_NONE;

 csr = tda9950_read(priv->client, REG_CSR);
 if (!(csr & CSR_INT))
  return IRQ_NONE;

 cconr = tda9950_read(priv->client, REG_CCONR) & CCONR_RETRY_MASK;

 tda9950_read_range(priv->client, REG_CDR0, buf, sizeof(buf));





 if (buf[0] == 0) {
  dev_warn(&priv->client->dev, "interrupt pending, but no message?\n");
  return IRQ_NONE;
 }

 switch (buf[1]) {
 case 132:
  arb_lost_cnt = nack_cnt = err_cnt = 0;
  switch (buf[2]) {
  case 128:
   tx_status = CEC_TX_STATUS_OK;
   break;

  case 130:
   tx_status = CEC_TX_STATUS_ARB_LOST;
   arb_lost_cnt = cconr;
   break;

  case 129:
   tx_status = CEC_TX_STATUS_NACK;
   nack_cnt = cconr;
   break;

  default:
   dev_err(&priv->client->dev, "CNF reply error 0x%02x\n",
    buf[2]);
   tx_status = CEC_TX_STATUS_ERROR;
   err_cnt = cconr;
   break;
  }

  if (tx_status != CEC_TX_STATUS_OK)
   tx_status |= CEC_TX_STATUS_MAX_RETRIES;
  cec_transmit_done(priv->adap, tx_status, arb_lost_cnt,
      nack_cnt, 0, err_cnt);
  break;

 case 131:
  priv->rx_msg.len = buf[0] - 2;
  if (priv->rx_msg.len > CEC_MAX_MSG_SIZE)
   priv->rx_msg.len = CEC_MAX_MSG_SIZE;

  memcpy(priv->rx_msg.msg, buf + 2, priv->rx_msg.len);
  cec_received_msg(priv->adap, &priv->rx_msg);
  break;

 default:
  dev_err(&priv->client->dev, "unknown service id 0x%02x\n",
   buf[1]);
  break;
 }

 return IRQ_HANDLED;
}
