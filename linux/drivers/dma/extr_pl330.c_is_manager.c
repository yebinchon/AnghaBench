
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl330_thread {TYPE_1__* dmac; } ;
struct TYPE_2__ {struct pl330_thread* manager; } ;



__attribute__((used)) static inline bool is_manager(struct pl330_thread *thrd)
{
 return thrd->dmac->manager == thrd;
}
