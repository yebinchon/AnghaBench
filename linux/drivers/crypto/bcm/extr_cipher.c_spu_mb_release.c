
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int num_chan; } ;
struct TYPE_4__ {int * mbox; TYPE_1__ spu; } ;


 TYPE_2__ iproc_priv ;
 int mbox_free_channel (int ) ;

__attribute__((used)) static void spu_mb_release(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < iproc_priv.spu.num_chan; i++)
  mbox_free_channel(iproc_priv.mbox[i]);
}
