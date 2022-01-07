
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm3323_data {int reg_conf; } ;


 int ARRAY_SIZE (int ) ;
 int CM3323_CONF_IT_MASK ;
 int CM3323_CONF_IT_SHIFT ;
 int EINVAL ;
 int cm3323_int_time ;

__attribute__((used)) static int cm3323_get_it_bits(struct cm3323_data *data)
{
 int bits;

 bits = (data->reg_conf & CM3323_CONF_IT_MASK) >>
  CM3323_CONF_IT_SHIFT;

 if (bits >= ARRAY_SIZE(cm3323_int_time))
  return -EINVAL;

 return bits;
}
