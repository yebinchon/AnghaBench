
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct opt3001 {int mode; } ;


 int OPT3001_CONFIGURATION_M_MASK ;

__attribute__((used)) static void opt3001_set_mode(struct opt3001 *opt, u16 *reg, u16 mode)
{
 *reg &= ~OPT3001_CONFIGURATION_M_MASK;
 *reg |= mode;
 opt->mode = mode;
}
