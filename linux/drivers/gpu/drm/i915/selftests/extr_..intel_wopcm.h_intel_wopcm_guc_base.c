
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int base; } ;
struct intel_wopcm {TYPE_1__ guc; } ;



__attribute__((used)) static inline u32 intel_wopcm_guc_base(struct intel_wopcm *wopcm)
{
 return wopcm->guc.base;
}
