
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max197_data {int* ctrl_bytes; } ;


 int MAX197_BIP ;

__attribute__((used)) static inline bool max197_is_bipolar(struct max197_data *data, int channel)
{
 return data->ctrl_bytes[channel] & MAX197_BIP;
}
