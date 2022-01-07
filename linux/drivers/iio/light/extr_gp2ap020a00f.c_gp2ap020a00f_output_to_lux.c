
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp2ap020a00f_data {int flags; } ;


 int GP2AP020A00F_FLAG_LUX_MODE_HI ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void gp2ap020a00f_output_to_lux(struct gp2ap020a00f_data *data,
      int *output_val)
{
 if (test_bit(GP2AP020A00F_FLAG_LUX_MODE_HI, &data->flags))
  *output_val *= 16;
}
