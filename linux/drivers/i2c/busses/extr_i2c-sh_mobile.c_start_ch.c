
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int iccl; int icch; int pos; scalar_t__ dma_buf; struct i2c_msg* msg; scalar_t__ sr; } ;
struct i2c_msg {int dummy; } ;


 int ICCH ;
 int ICCL ;
 int ICCR ;
 int ICCR_ICE ;
 int ICCR_SCP ;
 int ICIC ;
 int ICIC_ALE ;
 int ICIC_DTEE ;
 int ICIC_TACKE ;
 int ICIC_WAITE ;
 scalar_t__ i2c_get_dma_safe_msg_buf (struct i2c_msg*,int) ;
 int iic_wr (struct sh_mobile_i2c_data*,int ,int) ;
 int sh_mobile_i2c_xfer_dma (struct sh_mobile_i2c_data*) ;

__attribute__((used)) static void start_ch(struct sh_mobile_i2c_data *pd, struct i2c_msg *usr_msg,
       bool do_init)
{
 if (do_init) {

  iic_wr(pd, ICCR, ICCR_SCP);


  iic_wr(pd, ICCR, ICCR_ICE | ICCR_SCP);


  iic_wr(pd, ICCL, pd->iccl & 0xff);
  iic_wr(pd, ICCH, pd->icch & 0xff);
 }

 pd->msg = usr_msg;
 pd->pos = -1;
 pd->sr = 0;

 pd->dma_buf = i2c_get_dma_safe_msg_buf(pd->msg, 8);
 if (pd->dma_buf)
  sh_mobile_i2c_xfer_dma(pd);


 iic_wr(pd, ICIC, ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE);
}
