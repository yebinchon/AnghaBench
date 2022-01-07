
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_ipi_pdata {unsigned long local_id; scalar_t__ method; } ;
struct zynqmp_ipi_mbox {unsigned long remote_id; struct zynqmp_ipi_pdata* pdata; } ;
struct arm_smccc_res {int dummy; } ;


 scalar_t__ USE_SMC ;
 int arm_smccc_hvc (unsigned long,unsigned long,unsigned long,unsigned long,int ,int ,int ,int ,struct arm_smccc_res*) ;
 int arm_smccc_smc (unsigned long,unsigned long,unsigned long,unsigned long,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static void zynqmp_ipi_fw_call(struct zynqmp_ipi_mbox *ipi_mbox,
          unsigned long a0, unsigned long a3,
          struct arm_smccc_res *res)
{
 struct zynqmp_ipi_pdata *pdata = ipi_mbox->pdata;
 unsigned long a1, a2;

 a1 = pdata->local_id;
 a2 = ipi_mbox->remote_id;
 if (pdata->method == USE_SMC)
  arm_smccc_smc(a0, a1, a2, a3, 0, 0, 0, 0, res);
 else
  arm_smccc_hvc(a0, a1, a2, a3, 0, 0, 0, 0, res);
}
