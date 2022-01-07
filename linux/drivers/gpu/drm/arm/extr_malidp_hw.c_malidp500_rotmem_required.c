
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct malidp_hw_device {int dummy; } ;


 int malidp_format_get_bpp (int ) ;

__attribute__((used)) static int malidp500_rotmem_required(struct malidp_hw_device *hwdev, u16 w,
         u16 h, u32 fmt, bool has_modifier)
{





 int bpp = malidp_format_get_bpp(fmt);

 return w * bpp;
}
