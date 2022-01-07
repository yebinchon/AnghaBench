
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum type { ____Placeholder_type } type ;


 int KNIGHTS_LANDING ;
 scalar_t__ interleave_mode (int ) ;
 size_t knl_interleave_mode (int ) ;
 char const** knl_intlv_mode ;

__attribute__((used)) static const char *get_intlv_mode_str(u32 reg, enum type t)
{
 if (t == KNIGHTS_LANDING)
  return knl_intlv_mode[knl_interleave_mode(reg)];
 else
  return interleave_mode(reg) ? "[8:6]" : "[8:6]XOR[18:16]";
}
