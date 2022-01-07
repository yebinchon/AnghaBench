
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tegra_i2c_dev {size_t msg_buf_remaining; int * msg_buf; TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__ has_mst_fifo; } ;


 size_t BYTES_PER_FIFO_WORD ;
 int I2C_FIFO_STATUS ;
 int I2C_FIFO_STATUS_TX_MASK ;
 int I2C_FIFO_STATUS_TX_SHIFT ;
 int I2C_MST_FIFO_STATUS ;
 int I2C_MST_FIFO_STATUS_TX_MASK ;
 int I2C_MST_FIFO_STATUS_TX_SHIFT ;
 int I2C_TX_FIFO ;
 int barrier () ;
 int i2c_readl (struct tegra_i2c_dev*,int ) ;
 int i2c_writel (struct tegra_i2c_dev*,int,int ) ;
 int i2c_writesl (struct tegra_i2c_dev*,int *,int ,int) ;
 int le32_to_cpu (int) ;
 int memcpy (int*,int *,size_t) ;

__attribute__((used)) static int tegra_i2c_fill_tx_fifo(struct tegra_i2c_dev *i2c_dev)
{
 u32 val;
 int tx_fifo_avail;
 u8 *buf = i2c_dev->msg_buf;
 size_t buf_remaining = i2c_dev->msg_buf_remaining;
 int words_to_transfer;

 if (i2c_dev->hw->has_mst_fifo) {
  val = i2c_readl(i2c_dev, I2C_MST_FIFO_STATUS);
  tx_fifo_avail = (val & I2C_MST_FIFO_STATUS_TX_MASK) >>
   I2C_MST_FIFO_STATUS_TX_SHIFT;
 } else {
  val = i2c_readl(i2c_dev, I2C_FIFO_STATUS);
  tx_fifo_avail = (val & I2C_FIFO_STATUS_TX_MASK) >>
   I2C_FIFO_STATUS_TX_SHIFT;
 }


 words_to_transfer = buf_remaining / BYTES_PER_FIFO_WORD;


 if (words_to_transfer) {
  if (words_to_transfer > tx_fifo_avail)
   words_to_transfer = tx_fifo_avail;
  buf_remaining -= words_to_transfer * BYTES_PER_FIFO_WORD;
  tx_fifo_avail -= words_to_transfer;
  i2c_dev->msg_buf_remaining = buf_remaining;
  i2c_dev->msg_buf = buf +
   words_to_transfer * BYTES_PER_FIFO_WORD;
  barrier();

  i2c_writesl(i2c_dev, buf, I2C_TX_FIFO, words_to_transfer);

  buf += words_to_transfer * BYTES_PER_FIFO_WORD;
 }






 if (tx_fifo_avail > 0 && buf_remaining > 0) {





  memcpy(&val, buf, buf_remaining);
  val = le32_to_cpu(val);


  i2c_dev->msg_buf_remaining = 0;
  i2c_dev->msg_buf = ((void*)0);
  barrier();

  i2c_writel(i2c_dev, val, I2C_TX_FIFO);
 }

 return 0;
}
