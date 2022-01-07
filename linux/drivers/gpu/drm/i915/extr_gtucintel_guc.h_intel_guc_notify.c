
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int (* notify ) (struct intel_guc*) ;} ;


 int stub1 (struct intel_guc*) ;

__attribute__((used)) static inline void intel_guc_notify(struct intel_guc *guc)
{
 guc->notify(guc);
}
