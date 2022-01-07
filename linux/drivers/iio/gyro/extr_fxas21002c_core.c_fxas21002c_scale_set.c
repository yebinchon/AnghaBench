
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int dummy; } ;


 int F_FS ;
 int fxas21002c_range_value_from_fs (struct fxas21002c_data*,int) ;
 int fxas21002c_write (struct fxas21002c_data*,int ,int) ;

__attribute__((used)) static int fxas21002c_scale_set(struct fxas21002c_data *data, int range)
{
 int fs_bits;

 fs_bits = fxas21002c_range_value_from_fs(data, range);
 if (fs_bits < 0)
  return fs_bits;

 return fxas21002c_write(data, F_FS, fs_bits);
}
