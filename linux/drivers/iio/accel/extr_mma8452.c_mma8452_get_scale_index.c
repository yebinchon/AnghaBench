
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma8452_data {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int mma_scales; } ;


 int ARRAY_SIZE (int ) ;
 int mma8452_get_int_plus_micros_index (int ,int ,int,int) ;

__attribute__((used)) static int mma8452_get_scale_index(struct mma8452_data *data, int val, int val2)
{
 return mma8452_get_int_plus_micros_index(data->chip_info->mma_scales,
   ARRAY_SIZE(data->chip_info->mma_scales), val, val2);
}
