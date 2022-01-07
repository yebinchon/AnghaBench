
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max197_data {int * ctrl_bytes; } ;


 int MAX197_RNG ;

__attribute__((used)) static inline void max197_set_full_range(struct max197_data *data, int channel)
{
 data->ctrl_bytes[channel] |= MAX197_RNG;
}
