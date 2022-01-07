
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct smu10_power_state const smu10_power_state ;
struct pp_hw_power_state {scalar_t__ magic; } ;


 scalar_t__ SMU10_Magic ;

__attribute__((used)) static const struct smu10_power_state *cast_const_smu10_ps(
    const struct pp_hw_power_state *hw_ps)
{
 if (SMU10_Magic != hw_ps->magic)
  return ((void*)0);

 return (struct smu10_power_state *)hw_ps;
}
