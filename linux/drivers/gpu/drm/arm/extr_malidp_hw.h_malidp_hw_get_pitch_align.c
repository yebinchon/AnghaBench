
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct malidp_hw_device {TYPE_2__* hw; } ;
struct TYPE_3__ {int bus_align_bytes; } ;
struct TYPE_4__ {TYPE_1__ map; } ;



__attribute__((used)) static inline u8 malidp_hw_get_pitch_align(struct malidp_hw_device *hwdev, bool rotated)
{




 if (hwdev->hw->map.bus_align_bytes == 8)
  return 8;
 else
  return hwdev->hw->map.bus_align_bytes << (rotated ? 2 : 0);
}
