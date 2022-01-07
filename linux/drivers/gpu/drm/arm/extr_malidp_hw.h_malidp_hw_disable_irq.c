
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct malidp_hw_device {int dummy; } ;


 scalar_t__ MALIDP_REG_MASKIRQ ;
 scalar_t__ malidp_get_block_base (struct malidp_hw_device*,int ) ;
 int malidp_hw_clearbits (struct malidp_hw_device*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void malidp_hw_disable_irq(struct malidp_hw_device *hwdev,
      u8 block, u32 irq)
{
 u32 base = malidp_get_block_base(hwdev, block);

 malidp_hw_clearbits(hwdev, irq, base + MALIDP_REG_MASKIRQ);
}
