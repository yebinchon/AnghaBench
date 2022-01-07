
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device_node; } ;
struct TYPE_4__ {int task; TYPE_1__ chan; } ;
struct sun6i_vchan {TYPE_2__ vc; } ;
struct sun6i_dma_dev {int num_vchans; struct sun6i_vchan* vchans; } ;


 int list_del (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static inline void sun6i_dma_free(struct sun6i_dma_dev *sdev)
{
 int i;

 for (i = 0; i < sdev->num_vchans; i++) {
  struct sun6i_vchan *vchan = &sdev->vchans[i];

  list_del(&vchan->vc.chan.device_node);
  tasklet_kill(&vchan->vc.task);
 }
}
