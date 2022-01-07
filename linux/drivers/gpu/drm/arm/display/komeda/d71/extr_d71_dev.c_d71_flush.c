
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct komeda_dev {struct d71_dev* chip_data; } ;
struct d71_dev {int gcu_addr; } ;


 int GCU_CONFIG_CVAL ;
 int GCU_CONFIG_VALID0 ;
 int GCU_CONFIG_VALID1 ;
 int malidp_write32 (int ,int ,int ) ;

__attribute__((used)) static void d71_flush(struct komeda_dev *mdev,
        int master_pipe, u32 active_pipes)
{
 struct d71_dev *d71 = mdev->chip_data;
 u32 reg_offset = (master_pipe == 0) ?
    GCU_CONFIG_VALID0 : GCU_CONFIG_VALID1;

 malidp_write32(d71->gcu_addr, reg_offset, GCU_CONFIG_CVAL);
}
