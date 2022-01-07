
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {int dummy; } ;


 unsigned int RING_MAX_NONPRIV_SLOTS ;
 int get_whitelist_reg (struct intel_engine_cs const*,unsigned int) ;
 int pr_info (char*,unsigned int,int ,int ) ;

__attribute__((used)) static void
print_results(const struct intel_engine_cs *engine, const u32 *results)
{
 unsigned int i;

 for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++) {
  u32 expected = get_whitelist_reg(engine, i);
  u32 actual = results[i];

  pr_info("RING_NONPRIV[%d]: expected 0x%08x, found 0x%08x\n",
   i, expected, actual);
 }
}
