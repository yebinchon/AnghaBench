
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i5k_amb_data {scalar_t__ amb_mmio; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static u8 amb_read_byte(struct i5k_amb_data *data, unsigned long offset)
{
 return ioread8(data->amb_mmio + offset);
}
