
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf_addr; } ;
struct intel_guc_log {TYPE_1__ relay; } ;



bool intel_guc_log_relay_enabled(const struct intel_guc_log *log)
{
 return log->relay.buf_addr;
}
