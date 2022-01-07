
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ipi_mask_cpu ;
 int on_each_cpu (int *,int *,int) ;
 int pr_err (char*) ;
 int * sdei_firmware_call ;

__attribute__((used)) static void sdei_mark_interface_broken(void)
{
 pr_err("disabling SDEI firmware interface\n");
 on_each_cpu(&_ipi_mask_cpu, ((void*)0), 1);
 sdei_firmware_call = ((void*)0);
}
