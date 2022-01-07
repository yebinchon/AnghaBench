
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int aspm_intr_supported; } ;


 int __aspm_ctx_disable (struct hfi1_ctxtdata*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline void aspm_ctx_disable(struct hfi1_ctxtdata *rcd)
{

 if (likely(!rcd->aspm_intr_supported))
  return;

 __aspm_ctx_disable(rcd);
}
