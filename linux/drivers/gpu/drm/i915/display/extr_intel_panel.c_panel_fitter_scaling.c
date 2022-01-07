
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FACTOR ;

__attribute__((used)) static inline u32 panel_fitter_scaling(u32 source, u32 target)
{







 u32 ratio = source * (1 << 12) / target;
 return ((1 << 12) * ratio + (1 << 12)/2) / (1 << 12);
}
