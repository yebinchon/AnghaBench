
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int is_enabled; } ;
struct device {int dummy; } ;


 int DISPC_CONFIG ;
 scalar_t__ OMAP_DSS_LOAD_FRAME_ONLY ;
 scalar_t__ REG_GET (struct dispc_device*,int ,int,int) ;
 int _omap_dispc_initial_config (struct dispc_device*) ;
 struct dispc_device* dev_get_drvdata (struct device*) ;
 int dispc_errata_i734_wa (struct dispc_device*) ;
 int dispc_restore_context (struct dispc_device*) ;
 int dispc_restore_gamma_tables (struct dispc_device*) ;
 int smp_wmb () ;

__attribute__((used)) static int dispc_runtime_resume(struct device *dev)
{
 struct dispc_device *dispc = dev_get_drvdata(dev);







 if (REG_GET(dispc, DISPC_CONFIG, 2, 1) != OMAP_DSS_LOAD_FRAME_ONLY) {
  _omap_dispc_initial_config(dispc);

  dispc_errata_i734_wa(dispc);

  dispc_restore_context(dispc);

  dispc_restore_gamma_tables(dispc);
 }

 dispc->is_enabled = 1;

 smp_wmb();

 return 0;
}
