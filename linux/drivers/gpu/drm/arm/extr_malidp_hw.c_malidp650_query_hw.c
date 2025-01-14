
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct malidp_hw_device {int min_line_size; int max_line_size; int* rotation_memory; } ;


 int EINVAL ;
 int MALIDP550_CONFIG_ID ;
 int SZ_1K ;
 int SZ_4K ;
 int malidp_hw_read (struct malidp_hw_device*,int ) ;

__attribute__((used)) static int malidp650_query_hw(struct malidp_hw_device *hwdev)
{
 u32 conf = malidp_hw_read(hwdev, MALIDP550_CONFIG_ID);
 u8 ln_size = (conf >> 4) & 0x3, rsize;

 hwdev->min_line_size = 4;

 switch (ln_size) {
 case 0:
 case 2:

  hwdev->max_line_size = 0;
  return -EINVAL;
 case 1:
  hwdev->max_line_size = SZ_4K;

  rsize = 128;
  break;
 case 3:
  hwdev->max_line_size = 2560;

  rsize = 80;
 }

 hwdev->rotation_memory[0] = hwdev->rotation_memory[1] = rsize * SZ_1K;
 return 0;
}
