
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc_log {int level; } ;



__attribute__((used)) static inline u32 intel_guc_log_get_level(struct intel_guc_log *log)
{
 return log->level;
}
