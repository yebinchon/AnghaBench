
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FP_TG_CONTROL_OFF ;
 int FP_TG_CONTROL_ON ;

__attribute__((used)) static inline bool is_fpc_off(uint32_t fpc)
{
 return ((fpc & (FP_TG_CONTROL_ON | FP_TG_CONTROL_OFF)) ==
   FP_TG_CONTROL_OFF);
}
