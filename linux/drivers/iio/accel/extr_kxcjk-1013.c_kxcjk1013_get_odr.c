
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxcjk1013_data {scalar_t__ chipset; int odr_bits; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ KXTF9 ;
 int kxcjk1013_convert_odr_value (int ,int ,int ,int*,int*) ;
 int kxtf9_samp_freq_table ;
 int samp_freq_table ;

__attribute__((used)) static int kxcjk1013_get_odr(struct kxcjk1013_data *data, int *val, int *val2)
{
 if (data->chipset == KXTF9)
  return kxcjk1013_convert_odr_value(kxtf9_samp_freq_table,
         ARRAY_SIZE(kxtf9_samp_freq_table),
         data->odr_bits, val, val2);
 else
  return kxcjk1013_convert_odr_value(samp_freq_table,
         ARRAY_SIZE(samp_freq_table),
         data->odr_bits, val, val2);
}
