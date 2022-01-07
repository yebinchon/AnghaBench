
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct malidp_hw_device {int min_line_size; int max_line_size; int* rotation_memory; } ;


 int MALIDP500_CONFIG_ID ;
 int SZ_1K ;
 int SZ_2K ;
 int malidp_hw_read (struct malidp_hw_device*,int ) ;

__attribute__((used)) static int malidp500_query_hw(struct malidp_hw_device *hwdev)
{
 u32 conf = malidp_hw_read(hwdev, MALIDP500_CONFIG_ID);

 u8 ln_size_mult = conf & 0x10 ? 2 : 1;

 hwdev->min_line_size = 2;
 hwdev->max_line_size = SZ_2K * ln_size_mult;
 hwdev->rotation_memory[0] = SZ_1K * 64 * ln_size_mult;
 hwdev->rotation_memory[1] = 0;

 return 0;
}
