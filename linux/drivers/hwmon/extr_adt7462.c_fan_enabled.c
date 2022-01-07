
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adt7462_data {int fan_enabled; } ;



__attribute__((used)) static int fan_enabled(struct adt7462_data *data, int fan)
{
 return data->fan_enabled & (1 << fan);
}
