
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int name; int mmio_base; struct intel_uncore* uncore; } ;


 int GEM_TRACE (char*,int ,...) ;
 int RING_CTL (int const) ;
 int RING_HEAD (int const) ;
 int RING_TAIL (int const) ;
 scalar_t__ intel_engine_stop_cs (struct intel_engine_cs*) ;
 int intel_uncore_posting_read_fw (struct intel_uncore*,int ) ;
 scalar_t__ intel_uncore_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,scalar_t__) ;

__attribute__((used)) static void reset_prepare(struct intel_engine_cs *engine)
{
 struct intel_uncore *uncore = engine->uncore;
 const u32 base = engine->mmio_base;
 GEM_TRACE("%s\n", engine->name);

 if (intel_engine_stop_cs(engine))
  GEM_TRACE("%s: timed out on STOP_RING\n", engine->name);

 intel_uncore_write_fw(uncore,
         RING_HEAD(base),
         intel_uncore_read_fw(uncore, RING_TAIL(base)));
 intel_uncore_posting_read_fw(uncore, RING_HEAD(base));

 intel_uncore_write_fw(uncore, RING_HEAD(base), 0);
 intel_uncore_write_fw(uncore, RING_TAIL(base), 0);
 intel_uncore_posting_read_fw(uncore, RING_TAIL(base));


 intel_uncore_write_fw(uncore, RING_CTL(base), 0);


 if (intel_uncore_read_fw(uncore, RING_HEAD(base)))
  GEM_TRACE("%s: ring head [%x] not parked\n",
     engine->name,
     intel_uncore_read_fw(uncore, RING_HEAD(base)));
}
