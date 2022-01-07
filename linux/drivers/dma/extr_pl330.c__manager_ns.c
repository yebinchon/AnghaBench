
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pl330_thread {TYPE_2__* dmac; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ pcfg; } ;


 int DMAC_MODE_NS ;

__attribute__((used)) static inline bool _manager_ns(struct pl330_thread *thrd)
{
 return (thrd->dmac->pcfg.mode & DMAC_MODE_NS) ? 1 : 0;
}
