
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * addr; } ;
struct intel_engine_cs {TYPE_1__ status_page; } ;


 int WRITE_ONCE (int ,int ) ;
 int X86_FEATURE_CLFLUSH ;
 int clflush (int *) ;
 int mb () ;
 scalar_t__ static_cpu_has (int ) ;

__attribute__((used)) static inline void
intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
{





 if (static_cpu_has(X86_FEATURE_CLFLUSH)) {
  mb();
  clflush(&engine->status_page.addr[reg]);
  engine->status_page.addr[reg] = value;
  clflush(&engine->status_page.addr[reg]);
  mb();
 } else {
  WRITE_ONCE(engine->status_page.addr[reg], value);
 }
}
