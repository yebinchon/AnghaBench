
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_device {int dummy; } ;


 int cpt_disable_ecc_interrupts (struct cpt_device*) ;
 int cpt_disable_exec_interrupts (struct cpt_device*) ;
 int cpt_disable_mbox_interrupts (struct cpt_device*) ;

__attribute__((used)) static void cpt_disable_all_interrupts(struct cpt_device *cpt)
{
 cpt_disable_mbox_interrupts(cpt);
 cpt_disable_ecc_interrupts(cpt);
 cpt_disable_exec_interrupts(cpt);
}
