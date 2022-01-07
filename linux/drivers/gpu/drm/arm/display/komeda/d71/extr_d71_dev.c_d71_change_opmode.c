
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct komeda_dev {struct d71_dev* chip_data; } ;
struct d71_dev {int gcu_addr; } ;


 int BLK_CONTROL ;
 int dp_wait_cond (int,int,int,int) ;
 int malidp_read32 (int ,int ) ;
 int malidp_write32_mask (int ,int ,int,int) ;
 int to_d71_opmode (int) ;

__attribute__((used)) static int d71_change_opmode(struct komeda_dev *mdev, int new_mode)
{
 struct d71_dev *d71 = mdev->chip_data;
 u32 opmode = to_d71_opmode(new_mode);
 int ret;

 malidp_write32_mask(d71->gcu_addr, BLK_CONTROL, 0x7, opmode);

 ret = dp_wait_cond(((malidp_read32(d71->gcu_addr, BLK_CONTROL) & 0x7) == opmode),
      100, 1000, 10000);

 return ret;
}
