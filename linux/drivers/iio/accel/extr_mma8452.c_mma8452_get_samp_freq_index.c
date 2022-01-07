
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mma8452_get_int_plus_micros_index (int ,int ,int,int) ;
 int mma8452_samp_freq ;

__attribute__((used)) static int mma8452_get_samp_freq_index(struct mma8452_data *data,
           int val, int val2)
{
 return mma8452_get_int_plus_micros_index(mma8452_samp_freq,
       ARRAY_SIZE(mma8452_samp_freq),
       val, val2);
}
