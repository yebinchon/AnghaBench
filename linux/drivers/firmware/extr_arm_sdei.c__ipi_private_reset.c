
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int SDEI_1_0_FN_SDEI_PRIVATE_RESET ;
 int invoke_sdei_fn (int ,int ,int ,int ,int ,int ,int *) ;
 int pr_warn_once (char*,int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void _ipi_private_reset(void *ignored)
{
 int err;

 err = invoke_sdei_fn(SDEI_1_0_FN_SDEI_PRIVATE_RESET, 0, 0, 0, 0, 0,
        ((void*)0));
 if (err && err != -EIO)
  pr_warn_once("failed to reset CPU[%u]: %d\n",
        smp_processor_id(), err);
}
