
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int SDEI_1_0_FN_SDEI_PE_UNMASK ;
 int WARN_ON_ONCE (int ) ;
 int invoke_sdei_fn (int ,int ,int ,int ,int ,int ,int *) ;
 int pr_warn_once (char*,int ,int) ;
 int preemptible () ;
 int smp_processor_id () ;

int sdei_unmask_local_cpu(void)
{
 int err;

 WARN_ON_ONCE(preemptible());

 err = invoke_sdei_fn(SDEI_1_0_FN_SDEI_PE_UNMASK, 0, 0, 0, 0, 0, ((void*)0));
 if (err && err != -EIO) {
  pr_warn_once("failed to unmask CPU[%u]: %d\n",
        smp_processor_id(), err);
  return err;
 }

 return 0;
}
