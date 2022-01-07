
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_output {int pdrv_private; } ;


 int kfree (int ) ;

__attribute__((used)) static void sys_t_output_close(struct stm_output *output)
{
 kfree(output->pdrv_private);
}
