
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {size_t len; } ;
struct geni_se {scalar_t__ base; } ;
struct geni_i2c_dev {int err; scalar_t__ cur_rd; int done; struct geni_se se; } ;
typedef int dma_addr_t ;


 int GENI_SE_DMA ;
 int GENI_SE_FIFO ;
 int I2C_READ ;
 scalar_t__ SE_I2C_RX_TRANS_LEN ;
 int XFER_TIMEOUT ;
 int geni_i2c_abort_xfer (struct geni_i2c_dev*) ;
 int geni_i2c_rx_fsm_rst (struct geni_i2c_dev*) ;
 scalar_t__ geni_se_rx_dma_prep (struct geni_se*,void*,size_t,int *) ;
 int geni_se_rx_dma_unprep (struct geni_se*,int ,size_t) ;
 int geni_se_select_mode (struct geni_se*,int ) ;
 int geni_se_setup_m_cmd (struct geni_se*,int ,int ) ;
 void* i2c_get_dma_safe_msg_buf (struct i2c_msg*,int) ;
 int i2c_put_dma_safe_msg_buf (void*,struct i2c_msg*,int) ;
 int of_machine_is_compatible (char*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel_relaxed (size_t,scalar_t__) ;

__attribute__((used)) static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
    u32 m_param)
{
 dma_addr_t rx_dma;
 unsigned long time_left;
 void *dma_buf = ((void*)0);
 struct geni_se *se = &gi2c->se;
 size_t len = msg->len;

 if (!of_machine_is_compatible("lenovo,yoga-c630"))
  dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);

 if (dma_buf)
  geni_se_select_mode(se, GENI_SE_DMA);
 else
  geni_se_select_mode(se, GENI_SE_FIFO);

 writel_relaxed(len, se->base + SE_I2C_RX_TRANS_LEN);
 geni_se_setup_m_cmd(se, I2C_READ, m_param);

 if (dma_buf && geni_se_rx_dma_prep(se, dma_buf, len, &rx_dma)) {
  geni_se_select_mode(se, GENI_SE_FIFO);
  i2c_put_dma_safe_msg_buf(dma_buf, msg, 0);
  dma_buf = ((void*)0);
 }

 time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
 if (!time_left)
  geni_i2c_abort_xfer(gi2c);

 gi2c->cur_rd = 0;
 if (dma_buf) {
  if (gi2c->err)
   geni_i2c_rx_fsm_rst(gi2c);
  geni_se_rx_dma_unprep(se, rx_dma, len);
  i2c_put_dma_safe_msg_buf(dma_buf, msg, !gi2c->err);
 }

 return gi2c->err;
}
