
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct malidp_hw_device {scalar_t__ mw_state; } ;


 scalar_t__ MALIDP500_SE_CONTROL ;
 int MALIDP_DE_BLOCK ;
 scalar_t__ MALIDP_DE_DISPLAY_FUNC ;
 int MALIDP_SCALE_ENGINE_EN ;
 int MALIDP_SE_MEMWRITE_EN ;
 scalar_t__ MW_RESTART ;
 scalar_t__ MW_START ;
 scalar_t__ MW_STOP ;
 scalar_t__ malidp_get_block_base (struct malidp_hw_device*,int ) ;
 int malidp_hw_clearbits (struct malidp_hw_device*,int ,scalar_t__) ;

__attribute__((used)) static void malidp500_disable_memwrite(struct malidp_hw_device *hwdev)
{
 u32 base = malidp_get_block_base(hwdev, MALIDP_DE_BLOCK);

 if (hwdev->mw_state == MW_START || hwdev->mw_state == MW_RESTART)
  hwdev->mw_state = MW_STOP;
 malidp_hw_clearbits(hwdev, MALIDP_SE_MEMWRITE_EN, MALIDP500_SE_CONTROL);
 malidp_hw_clearbits(hwdev, MALIDP_SCALE_ENGINE_EN, base + MALIDP_DE_DISPLAY_FUNC);
}
