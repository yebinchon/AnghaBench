
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct malidp_hw_device {int dummy; } ;



 int EINVAL ;
 int malidpx50_get_bytes_per_column (int) ;

__attribute__((used)) static int malidp650_rotmem_required(struct malidp_hw_device *hwdev, u16 w,
         u16 h, u32 fmt, bool has_modifier)
{
 int bytes_per_column = 0;

 switch (fmt) {

 case 128:
  bytes_per_column = 32;
  break;
 default:
  bytes_per_column = malidpx50_get_bytes_per_column(fmt);
 }

 if (bytes_per_column == -EINVAL)
  return bytes_per_column;

 return w * bytes_per_column;
}
