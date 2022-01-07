
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int (* send ) (struct intel_guc*,int const*,int ,int *,int ) ;} ;


 int stub1 (struct intel_guc*,int const*,int ,int *,int ) ;

__attribute__((used)) static
inline int intel_guc_send(struct intel_guc *guc, const u32 *action, u32 len)
{
 return guc->send(guc, action, len, ((void*)0), 0);
}
