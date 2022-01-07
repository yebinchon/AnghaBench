
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;


 int PFN_PHYS (int ) ;
 int page_to_pfn (int ) ;
 int set_hws_pga (struct intel_engine_cs*,int ) ;
 int set_hwstam (struct intel_engine_cs*,unsigned int) ;
 int status_page (struct intel_engine_cs*) ;

__attribute__((used)) static void ring_setup_phys_status_page(struct intel_engine_cs *engine)
{
 set_hws_pga(engine, PFN_PHYS(page_to_pfn(status_page(engine))));
 set_hwstam(engine, ~0u);
}
