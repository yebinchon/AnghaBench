
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int* status_ptr; unsigned int event_wrap; unsigned int event_counter; int (* wait_evnt ) (TYPE_1__*,unsigned int) ;} ;
typedef TYPE_1__ drm_savage_private_t ;
struct TYPE_5__ {int count; } ;
typedef TYPE_2__ drm_savage_event_wait_t ;


 int DRM_DEBUG (char*) ;
 int SAVAGE_READ (int ) ;
 int SAVAGE_STATUS_WORD1 ;
 int UPDATE_EVENT_COUNTER () ;
 int stub1 (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int savage_bci_event_wait(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_savage_private_t *dev_priv = dev->dev_private;
 drm_savage_event_wait_t *event = data;
 unsigned int event_e, hw_e;
 unsigned int event_w, hw_w;

 DRM_DEBUG("\n");

 UPDATE_EVENT_COUNTER();
 if (dev_priv->status_ptr)
  hw_e = dev_priv->status_ptr[1] & 0xffff;
 else
  hw_e = SAVAGE_READ(SAVAGE_STATUS_WORD1) & 0xffff;
 hw_w = dev_priv->event_wrap;
 if (hw_e > dev_priv->event_counter)
  hw_w--;

 event_e = event->count & 0xffff;
 event_w = event->count >> 16;





 if (event_w < hw_w || (event_w == hw_w && event_e <= hw_e))
  return 0;
 else
  return dev_priv->wait_evnt(dev_priv, event_e);
}
