
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * addr; } ;
struct intel_engine_cs {TYPE_1__ status_page; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline u32
intel_read_status_page(const struct intel_engine_cs *engine, int reg)
{

 return READ_ONCE(engine->status_page.addr[reg]);
}
