
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; int mutex; } ;
struct TYPE_3__ {int list; int mutex; } ;
struct nvkm_mmu {TYPE_2__ ptp; TYPE_1__ ptc; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void
nvkm_mmu_ptc_init(struct nvkm_mmu *mmu)
{
 mutex_init(&mmu->ptc.mutex);
 INIT_LIST_HEAD(&mmu->ptc.list);
 mutex_init(&mmu->ptp.mutex);
 INIT_LIST_HEAD(&mmu->ptp.list);
}
