
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm {int dummy; } ;


 int kfree (struct tcm*) ;

__attribute__((used)) static void sita_deinit(struct tcm *tcm)
{
 kfree(tcm);
}
