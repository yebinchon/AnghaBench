
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {TYPE_1__* stream; int mutex; } ;
struct TYPE_2__ {int paused; int claimed; int * buf; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VMW_MAX_NUM_STREAMS ;
 struct vmw_overlay* kzalloc (int,int ) ;
 int mutex_init (int *) ;

int vmw_overlay_init(struct vmw_private *dev_priv)
{
 struct vmw_overlay *overlay;
 int i;

 if (dev_priv->overlay_priv)
  return -EINVAL;

 overlay = kzalloc(sizeof(*overlay), GFP_KERNEL);
 if (!overlay)
  return -ENOMEM;

 mutex_init(&overlay->mutex);
 for (i = 0; i < VMW_MAX_NUM_STREAMS; i++) {
  overlay->stream[i].buf = ((void*)0);
  overlay->stream[i].paused = 0;
  overlay->stream[i].claimed = 0;
 }

 dev_priv->overlay_priv = overlay;

 return 0;
}
