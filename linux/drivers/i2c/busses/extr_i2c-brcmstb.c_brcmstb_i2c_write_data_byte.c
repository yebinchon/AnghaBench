
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmstb_i2c_dev {int dummy; } ;
typedef enum bsc_xfer_cmd { ____Placeholder_bsc_xfer_cmd } bsc_xfer_cmd ;


 int CMD_WR ;
 int CMD_WR_NOACK ;
 int brcmstb_send_i2c_cmd (struct brcmstb_i2c_dev*,int) ;
 int bsc_writel (struct brcmstb_i2c_dev*,int,int ) ;
 int cnt_reg ;
 int data_in ;

__attribute__((used)) static int brcmstb_i2c_write_data_byte(struct brcmstb_i2c_dev *dev,
           u8 *buf, unsigned int nak_expected)
{
 enum bsc_xfer_cmd cmd = nak_expected ? CMD_WR : CMD_WR_NOACK;

 bsc_writel(dev, 1, cnt_reg);
 bsc_writel(dev, *buf, data_in);

 return brcmstb_send_i2c_cmd(dev, cmd);
}
