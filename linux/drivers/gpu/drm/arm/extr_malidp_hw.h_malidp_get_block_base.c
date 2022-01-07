
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct malidp_hw_device {TYPE_2__* hw; } ;
struct TYPE_3__ {int dc_base; int se_base; } ;
struct TYPE_4__ {TYPE_1__ map; } ;





__attribute__((used)) static inline u32 malidp_get_block_base(struct malidp_hw_device *hwdev,
     u8 block)
{
 switch (block) {
 case 128:
  return hwdev->hw->map.se_base;
 case 129:
  return hwdev->hw->map.dc_base;
 }

 return 0;
}
