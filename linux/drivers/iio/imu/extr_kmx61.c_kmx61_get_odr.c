
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct kmx61_data {int odr_bits; } ;
struct TYPE_3__ {int val; int val2; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int KMX61_ACC ;
 int KMX61_ACC_ODR_MASK ;
 int KMX61_ACC_ODR_SHIFT ;
 int KMX61_MAG ;
 int KMX61_MAG_ODR_MASK ;
 int KMX61_MAG_ODR_SHIFT ;
 TYPE_1__* kmx61_samp_freq_table ;

__attribute__((used)) static int kmx61_get_odr(struct kmx61_data *data, int *val, int *val2,
    u8 device)
{
 u8 lodr_bits;

 if (device & KMX61_ACC)
  lodr_bits = (data->odr_bits >> KMX61_ACC_ODR_SHIFT) &
        KMX61_ACC_ODR_MASK;
 else if (device & KMX61_MAG)
  lodr_bits = (data->odr_bits >> KMX61_MAG_ODR_SHIFT) &
        KMX61_MAG_ODR_MASK;
 else
  return -EINVAL;

 if (lodr_bits >= ARRAY_SIZE(kmx61_samp_freq_table))
  return -EINVAL;

 *val = kmx61_samp_freq_table[lodr_bits].val;
 *val2 = kmx61_samp_freq_table[lodr_bits].val2;

 return 0;
}
