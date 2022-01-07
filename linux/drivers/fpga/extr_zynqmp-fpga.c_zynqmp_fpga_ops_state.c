
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynqmp_eemi_ops {int (* fpga_get_status ) (int*) ;} ;
struct fpga_manager {int dummy; } ;
typedef enum fpga_mgr_states { ____Placeholder_fpga_mgr_states } fpga_mgr_states ;


 int FPGA_MGR_STATE_OPERATING ;
 int FPGA_MGR_STATE_UNKNOWN ;
 scalar_t__ IS_ERR_OR_NULL (struct zynqmp_eemi_ops const*) ;
 int IXR_FPGA_DONE_MASK ;
 int stub1 (int*) ;
 struct zynqmp_eemi_ops* zynqmp_pm_get_eemi_ops () ;

__attribute__((used)) static enum fpga_mgr_states zynqmp_fpga_ops_state(struct fpga_manager *mgr)
{
 const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 u32 status;

 if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_get_status)
  return FPGA_MGR_STATE_UNKNOWN;

 eemi_ops->fpga_get_status(&status);
 if (status & IXR_FPGA_DONE_MASK)
  return FPGA_MGR_STATE_OPERATING;

 return FPGA_MGR_STATE_UNKNOWN;
}
