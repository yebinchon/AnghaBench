
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_fdma_dev {int nr_channels; struct st_fdma_chan* chans; } ;
struct TYPE_3__ {int device_node; } ;
struct TYPE_4__ {int task; TYPE_1__ chan; } ;
struct st_fdma_chan {TYPE_2__ vchan; } ;


 int list_del (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void st_fdma_free(struct st_fdma_dev *fdev)
{
 struct st_fdma_chan *fchan;
 int i;

 for (i = 0; i < fdev->nr_channels; i++) {
  fchan = &fdev->chans[i];
  list_del(&fchan->vchan.chan.device_node);
  tasklet_kill(&fchan->vchan.task);
 }
}
