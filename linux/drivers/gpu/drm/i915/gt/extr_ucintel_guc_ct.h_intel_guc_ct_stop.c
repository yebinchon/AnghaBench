
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct intel_guc_ct {TYPE_1__ host_channel; } ;



__attribute__((used)) static inline void intel_guc_ct_stop(struct intel_guc_ct *ct)
{
 ct->host_channel.enabled = 0;
}
