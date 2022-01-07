
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ipi_private_reset ;
 int on_each_cpu (int *,int *,int) ;
 int pr_err (char*,int) ;
 int sdei_api_shared_reset () ;
 int sdei_mark_interface_broken () ;

__attribute__((used)) static int sdei_platform_reset(void)
{
 int err;

 on_each_cpu(&_ipi_private_reset, ((void*)0), 1);
 err = sdei_api_shared_reset();
 if (err) {
  pr_err("Failed to reset platform: %d\n", err);
  sdei_mark_interface_broken();
 }

 return err;
}
