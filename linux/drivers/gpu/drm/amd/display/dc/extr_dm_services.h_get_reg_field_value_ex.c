
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t get_reg_field_value_ex(
 uint32_t reg_value,
 uint32_t mask,
 uint8_t shift)
{
 return (mask & reg_value) >> shift;
}
