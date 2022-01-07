
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbox_chan {int dummy; } ;
struct TYPE_2__ {int num_chans; } ;


 int ENOENT ;
 struct mbox_chan* ERR_PTR (int ) ;
 struct mbox_chan* pcc_mbox_channels ;
 TYPE_1__ pcc_mbox_ctrl ;

__attribute__((used)) static struct mbox_chan *get_pcc_channel(int id)
{
 if (id < 0 || id >= pcc_mbox_ctrl.num_chans)
  return ERR_PTR(-ENOENT);

 return &pcc_mbox_channels[id];
}
