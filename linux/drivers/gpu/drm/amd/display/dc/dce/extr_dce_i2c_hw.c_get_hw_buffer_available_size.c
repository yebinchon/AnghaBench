
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dce_i2c_hw {scalar_t__ buffer_used_bytes; scalar_t__ buffer_size; } ;



__attribute__((used)) static uint32_t get_hw_buffer_available_size(
 const struct dce_i2c_hw *dce_i2c_hw)
{
 return dce_i2c_hw->buffer_size -
   dce_i2c_hw->buffer_used_bytes;
}
