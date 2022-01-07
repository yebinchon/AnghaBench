
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_eemi_ops {int dummy; } ;


 int EPROBE_DEFER ;
 struct zynqmp_eemi_ops const* ERR_PTR (int ) ;
 struct zynqmp_eemi_ops const* eemi_ops_tbl ;

const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
{
 if (eemi_ops_tbl)
  return eemi_ops_tbl;
 else
  return ERR_PTR(-EPROBE_DEFER);

}
