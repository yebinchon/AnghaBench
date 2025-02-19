
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int timeout; } ;
struct mtk_i2c {int irq_stat; scalar_t__ speed_hz; scalar_t__ op; int dev; TYPE_1__ adap; int msg_complete; scalar_t__ auto_restart; scalar_t__ pdmabase; TYPE_2__* dev_comp; } ;
struct i2c_msg {int len; int addr; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ support_33bits; scalar_t__ aux_len_reg; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int ENXIO ;
 int ETIMEDOUT ;
 int I2C_ACKERR ;
 int I2C_ARB_LOST ;
 int I2C_CONTROL_DIR_CHANGE ;
 int I2C_CONTROL_RS ;
 scalar_t__ I2C_DEFAULT_SPEED ;
 int I2C_DMA_CLR_FLAG ;
 int I2C_DMA_CON_RX ;
 int I2C_DMA_CON_TX ;
 int I2C_DMA_INT_FLAG_NONE ;
 int I2C_DMA_START_EN ;
 int I2C_FIFO_ADDR_CLR ;
 int I2C_FS_START_CON ;
 int I2C_HS_NACKERR ;
 scalar_t__ I2C_MASTER_RD ;
 scalar_t__ I2C_MASTER_WR ;
 scalar_t__ I2C_MASTER_WRRD ;
 int I2C_RS_MUL_CNFG ;
 int I2C_RS_MUL_TRIG ;
 int I2C_RS_TRANSFER ;
 int I2C_ST_START_CON ;
 int I2C_TRANSAC_COMP ;
 int I2C_TRANSAC_START ;
 int I2C_WRRD_TRANAC_VALUE ;
 scalar_t__ MAX_FS_MODE_SPEED ;
 scalar_t__ OFFSET_CON ;
 int OFFSET_CONTROL ;
 scalar_t__ OFFSET_EN ;
 int OFFSET_EXT_CONF ;
 int OFFSET_FIFO_ADDR_CLR ;
 int OFFSET_INTR_MASK ;
 int OFFSET_INTR_STAT ;
 scalar_t__ OFFSET_INT_FLAG ;
 scalar_t__ OFFSET_RX_4G_MODE ;
 scalar_t__ OFFSET_RX_LEN ;
 scalar_t__ OFFSET_RX_MEM_ADDR ;
 int OFFSET_SLAVE_ADDR ;
 int OFFSET_START ;
 int OFFSET_TRANSAC_LEN ;
 int OFFSET_TRANSFER_LEN ;
 int OFFSET_TRANSFER_LEN_AUX ;
 scalar_t__ OFFSET_TX_4G_MODE ;
 scalar_t__ OFFSET_TX_LEN ;
 scalar_t__ OFFSET_TX_MEM_ADDR ;
 int dev_dbg (int ,char*,int ) ;
 scalar_t__ dma_map_single (int ,int *,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,int,int ) ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 int * i2c_get_dma_safe_msg_buf (struct i2c_msg*,int) ;
 int i2c_put_dma_safe_msg_buf (int *,struct i2c_msg*,int) ;
 int mtk_i2c_init_hw (struct mtk_i2c*) ;
 int mtk_i2c_readw (struct mtk_i2c*,int ) ;
 int mtk_i2c_set_4g_mode (scalar_t__) ;
 int mtk_i2c_writew (struct mtk_i2c*,int,int ) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
          int num, int left_num)
{
 u16 addr_reg;
 u16 start_reg;
 u16 control_reg;
 u16 restart_flag = 0;
 u32 reg_4g_mode;
 u8 *dma_rd_buf = ((void*)0);
 u8 *dma_wr_buf = ((void*)0);
 dma_addr_t rpaddr = 0;
 dma_addr_t wpaddr = 0;
 int ret;

 i2c->irq_stat = 0;

 if (i2c->auto_restart)
  restart_flag = I2C_RS_TRANSFER;

 reinit_completion(&i2c->msg_complete);

 control_reg = mtk_i2c_readw(i2c, OFFSET_CONTROL) &
   ~(I2C_CONTROL_DIR_CHANGE | I2C_CONTROL_RS);
 if ((i2c->speed_hz > MAX_FS_MODE_SPEED) || (left_num >= 1))
  control_reg |= I2C_CONTROL_RS;

 if (i2c->op == I2C_MASTER_WRRD)
  control_reg |= I2C_CONTROL_DIR_CHANGE | I2C_CONTROL_RS;

 mtk_i2c_writew(i2c, control_reg, OFFSET_CONTROL);


 if (i2c->speed_hz <= I2C_DEFAULT_SPEED)
  mtk_i2c_writew(i2c, I2C_ST_START_CON, OFFSET_EXT_CONF);
 else
  mtk_i2c_writew(i2c, I2C_FS_START_CON, OFFSET_EXT_CONF);

 addr_reg = i2c_8bit_addr_from_msg(msgs);
 mtk_i2c_writew(i2c, addr_reg, OFFSET_SLAVE_ADDR);


 mtk_i2c_writew(i2c, restart_flag | I2C_HS_NACKERR | I2C_ACKERR |
       I2C_ARB_LOST | I2C_TRANSAC_COMP, OFFSET_INTR_STAT);

 mtk_i2c_writew(i2c, I2C_FIFO_ADDR_CLR, OFFSET_FIFO_ADDR_CLR);


 mtk_i2c_writew(i2c, restart_flag | I2C_HS_NACKERR | I2C_ACKERR |
       I2C_ARB_LOST | I2C_TRANSAC_COMP, OFFSET_INTR_MASK);


 if (i2c->op == I2C_MASTER_WRRD) {
  if (i2c->dev_comp->aux_len_reg) {
   mtk_i2c_writew(i2c, msgs->len, OFFSET_TRANSFER_LEN);
   mtk_i2c_writew(i2c, (msgs + 1)->len,
         OFFSET_TRANSFER_LEN_AUX);
  } else {
   mtk_i2c_writew(i2c, msgs->len | ((msgs + 1)->len) << 8,
         OFFSET_TRANSFER_LEN);
  }
  mtk_i2c_writew(i2c, I2C_WRRD_TRANAC_VALUE, OFFSET_TRANSAC_LEN);
 } else {
  mtk_i2c_writew(i2c, msgs->len, OFFSET_TRANSFER_LEN);
  mtk_i2c_writew(i2c, num, OFFSET_TRANSAC_LEN);
 }


 if (i2c->op == I2C_MASTER_RD) {
  writel(I2C_DMA_INT_FLAG_NONE, i2c->pdmabase + OFFSET_INT_FLAG);
  writel(I2C_DMA_CON_RX, i2c->pdmabase + OFFSET_CON);

  dma_rd_buf = i2c_get_dma_safe_msg_buf(msgs, 1);
  if (!dma_rd_buf)
   return -ENOMEM;

  rpaddr = dma_map_single(i2c->dev, dma_rd_buf,
     msgs->len, DMA_FROM_DEVICE);
  if (dma_mapping_error(i2c->dev, rpaddr)) {
   i2c_put_dma_safe_msg_buf(dma_rd_buf, msgs, 0);

   return -ENOMEM;
  }

  if (i2c->dev_comp->support_33bits) {
   reg_4g_mode = mtk_i2c_set_4g_mode(rpaddr);
   writel(reg_4g_mode, i2c->pdmabase + OFFSET_RX_4G_MODE);
  }

  writel((u32)rpaddr, i2c->pdmabase + OFFSET_RX_MEM_ADDR);
  writel(msgs->len, i2c->pdmabase + OFFSET_RX_LEN);
 } else if (i2c->op == I2C_MASTER_WR) {
  writel(I2C_DMA_INT_FLAG_NONE, i2c->pdmabase + OFFSET_INT_FLAG);
  writel(I2C_DMA_CON_TX, i2c->pdmabase + OFFSET_CON);

  dma_wr_buf = i2c_get_dma_safe_msg_buf(msgs, 1);
  if (!dma_wr_buf)
   return -ENOMEM;

  wpaddr = dma_map_single(i2c->dev, dma_wr_buf,
     msgs->len, DMA_TO_DEVICE);
  if (dma_mapping_error(i2c->dev, wpaddr)) {
   i2c_put_dma_safe_msg_buf(dma_wr_buf, msgs, 0);

   return -ENOMEM;
  }

  if (i2c->dev_comp->support_33bits) {
   reg_4g_mode = mtk_i2c_set_4g_mode(wpaddr);
   writel(reg_4g_mode, i2c->pdmabase + OFFSET_TX_4G_MODE);
  }

  writel((u32)wpaddr, i2c->pdmabase + OFFSET_TX_MEM_ADDR);
  writel(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
 } else {
  writel(I2C_DMA_CLR_FLAG, i2c->pdmabase + OFFSET_INT_FLAG);
  writel(I2C_DMA_CLR_FLAG, i2c->pdmabase + OFFSET_CON);

  dma_wr_buf = i2c_get_dma_safe_msg_buf(msgs, 1);
  if (!dma_wr_buf)
   return -ENOMEM;

  wpaddr = dma_map_single(i2c->dev, dma_wr_buf,
     msgs->len, DMA_TO_DEVICE);
  if (dma_mapping_error(i2c->dev, wpaddr)) {
   i2c_put_dma_safe_msg_buf(dma_wr_buf, msgs, 0);

   return -ENOMEM;
  }

  dma_rd_buf = i2c_get_dma_safe_msg_buf((msgs + 1), 1);
  if (!dma_rd_buf) {
   dma_unmap_single(i2c->dev, wpaddr,
      msgs->len, DMA_TO_DEVICE);

   i2c_put_dma_safe_msg_buf(dma_wr_buf, msgs, 0);

   return -ENOMEM;
  }

  rpaddr = dma_map_single(i2c->dev, dma_rd_buf,
     (msgs + 1)->len,
     DMA_FROM_DEVICE);
  if (dma_mapping_error(i2c->dev, rpaddr)) {
   dma_unmap_single(i2c->dev, wpaddr,
      msgs->len, DMA_TO_DEVICE);

   i2c_put_dma_safe_msg_buf(dma_wr_buf, msgs, 0);
   i2c_put_dma_safe_msg_buf(dma_rd_buf, (msgs + 1), 0);

   return -ENOMEM;
  }

  if (i2c->dev_comp->support_33bits) {
   reg_4g_mode = mtk_i2c_set_4g_mode(wpaddr);
   writel(reg_4g_mode, i2c->pdmabase + OFFSET_TX_4G_MODE);

   reg_4g_mode = mtk_i2c_set_4g_mode(rpaddr);
   writel(reg_4g_mode, i2c->pdmabase + OFFSET_RX_4G_MODE);
  }

  writel((u32)wpaddr, i2c->pdmabase + OFFSET_TX_MEM_ADDR);
  writel((u32)rpaddr, i2c->pdmabase + OFFSET_RX_MEM_ADDR);
  writel(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
  writel((msgs + 1)->len, i2c->pdmabase + OFFSET_RX_LEN);
 }

 writel(I2C_DMA_START_EN, i2c->pdmabase + OFFSET_EN);

 if (!i2c->auto_restart) {
  start_reg = I2C_TRANSAC_START;
 } else {
  start_reg = I2C_TRANSAC_START | I2C_RS_MUL_TRIG;
  if (left_num >= 1)
   start_reg |= I2C_RS_MUL_CNFG;
 }
 mtk_i2c_writew(i2c, start_reg, OFFSET_START);

 ret = wait_for_completion_timeout(&i2c->msg_complete,
       i2c->adap.timeout);


 mtk_i2c_writew(i2c, ~(restart_flag | I2C_HS_NACKERR | I2C_ACKERR |
       I2C_ARB_LOST | I2C_TRANSAC_COMP), OFFSET_INTR_MASK);

 if (i2c->op == I2C_MASTER_WR) {
  dma_unmap_single(i2c->dev, wpaddr,
     msgs->len, DMA_TO_DEVICE);

  i2c_put_dma_safe_msg_buf(dma_wr_buf, msgs, 1);
 } else if (i2c->op == I2C_MASTER_RD) {
  dma_unmap_single(i2c->dev, rpaddr,
     msgs->len, DMA_FROM_DEVICE);

  i2c_put_dma_safe_msg_buf(dma_rd_buf, msgs, 1);
 } else {
  dma_unmap_single(i2c->dev, wpaddr, msgs->len,
     DMA_TO_DEVICE);
  dma_unmap_single(i2c->dev, rpaddr, (msgs + 1)->len,
     DMA_FROM_DEVICE);

  i2c_put_dma_safe_msg_buf(dma_wr_buf, msgs, 1);
  i2c_put_dma_safe_msg_buf(dma_rd_buf, (msgs + 1), 1);
 }

 if (ret == 0) {
  dev_dbg(i2c->dev, "addr: %x, transfer timeout\n", msgs->addr);
  mtk_i2c_init_hw(i2c);
  return -ETIMEDOUT;
 }

 if (i2c->irq_stat & (I2C_HS_NACKERR | I2C_ACKERR)) {
  dev_dbg(i2c->dev, "addr: %x, transfer ACK error\n", msgs->addr);
  mtk_i2c_init_hw(i2c);
  return -ENXIO;
 }

 return 0;
}
