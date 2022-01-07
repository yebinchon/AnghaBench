
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
 int EINVAL ;
 int I2C_FIFO_STATUS ;
 int I2C_FIFO_STATUS_RX_MASK ;
 int I2C_FIFO_STATUS_RX_SHIFT ;
 int I2C_MST_FIFO_STATUS ;
 int I2C_MST_FIFO_STATUS_RX_MASK ;
 int I2C_MST_FIFO_STATUS_RX_SHIFT ;
 int I2C_RX_FIFO ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_to_le32 (int) ;
 int i2c_readl (struct tegra_i2c_dev*,int ) ;
 int i2c_readsl (struct tegra_i2c_dev*,int *,int ,int) ;
 int memcpy (int *,int*,size_t) ;

__attribute__((used)) static int tegra_i2c_empty_rx_fifo(struct tegra_i2c_dev *i2c_dev)
{
 u32 val;
 int rx_fifo_avail;
 u8 *buf = i2c_dev->msg_buf;
 size_t buf_remaining = i2c_dev->msg_buf_remaining;
 int words_to_transfer;





 if (WARN_ON_ONCE(!(i2c_dev->msg_buf_remaining)))
  return -EINVAL;

 if (i2c_dev->hw->has_mst_fifo) {
  val = i2c_readl(i2c_dev, I2C_MST_FIFO_STATUS);
  rx_fifo_avail = (val & I2C_MST_FIFO_STATUS_RX_MASK) >>
   I2C_MST_FIFO_STATUS_RX_SHIFT;
 } else {
  val = i2c_readl(i2c_dev, I2C_FIFO_STATUS);
  rx_fifo_avail = (val & I2C_FIFO_STATUS_RX_MASK) >>
   I2C_FIFO_STATUS_RX_SHIFT;
 }


 words_to_transfer = buf_remaining / BYTES_PER_FIFO_WORD;
 if (words_to_transfer > rx_fifo_avail)
  words_to_transfer = rx_fifo_avail;

 i2c_readsl(i2c_dev, buf, I2C_RX_FIFO, words_to_transfer);

 buf += words_to_transfer * BYTES_PER_FIFO_WORD;
 buf_remaining -= words_to_transfer * BYTES_PER_FIFO_WORD;
 rx_fifo_avail -= words_to_transfer;





 if (rx_fifo_avail > 0 && buf_remaining > 0) {





  val = i2c_readl(i2c_dev, I2C_RX_FIFO);
  val = cpu_to_le32(val);
  memcpy(buf, &val, buf_remaining);
  buf_remaining = 0;
  rx_fifo_avail--;
 }


 if (WARN_ON_ONCE(rx_fifo_avail))
  return -EINVAL;

 i2c_dev->msg_buf_remaining = buf_remaining;
 i2c_dev->msg_buf = buf;

 return 0;
}
