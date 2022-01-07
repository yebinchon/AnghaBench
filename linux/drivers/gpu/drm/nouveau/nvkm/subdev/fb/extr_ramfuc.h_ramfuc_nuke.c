
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ramfuc_reg {int force; } ;
struct ramfuc {int dummy; } ;



__attribute__((used)) static inline void
ramfuc_nuke(struct ramfuc *ram, struct ramfuc_reg *reg)
{
 reg->force = 1;
}
