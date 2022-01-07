
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gmu {int dummy; } ;


 int a6xx_hfi_get_fw_version (struct a6xx_gmu*,int *) ;
 int a6xx_hfi_send_bw_table (struct a6xx_gmu*) ;
 int a6xx_hfi_send_gmu_init (struct a6xx_gmu*,int) ;
 int a6xx_hfi_send_perf_table (struct a6xx_gmu*) ;
 int a6xx_hfi_send_test (struct a6xx_gmu*) ;

int a6xx_hfi_start(struct a6xx_gmu *gmu, int boot_state)
{
 int ret;

 ret = a6xx_hfi_send_gmu_init(gmu, boot_state);
 if (ret)
  return ret;

 ret = a6xx_hfi_get_fw_version(gmu, ((void*)0));
 if (ret)
  return ret;







 ret = a6xx_hfi_send_perf_table(gmu);
 if (ret)
  return ret;

 ret = a6xx_hfi_send_bw_table(gmu);
 if (ret)
  return ret;





 a6xx_hfi_send_test(gmu);

 return 0;
}
