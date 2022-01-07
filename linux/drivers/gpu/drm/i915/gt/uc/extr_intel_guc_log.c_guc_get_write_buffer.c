
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channel; } ;
struct intel_guc_log {TYPE_1__ relay; } ;


 void* relay_reserve (int ,int ) ;

__attribute__((used)) static void *guc_get_write_buffer(struct intel_guc_log *log)
{
 return relay_reserve(log->relay.channel, 0);
}
