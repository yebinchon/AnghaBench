
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {scalar_t__ send; } ;


 scalar_t__ intel_guc_send_nop ;

__attribute__((used)) static inline bool guc_communication_enabled(struct intel_guc *guc)
{
 return guc->send != intel_guc_send_nop;
}
