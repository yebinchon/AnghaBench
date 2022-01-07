
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm {int (* deinit ) (struct tcm*) ;} ;


 int stub1 (struct tcm*) ;

__attribute__((used)) static inline void tcm_deinit(struct tcm *tcm)
{
 if (tcm)
  tcm->deinit(tcm);
}
