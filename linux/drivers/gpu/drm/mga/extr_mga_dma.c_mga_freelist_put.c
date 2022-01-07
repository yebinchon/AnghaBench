
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct drm_buf {TYPE_4__* dev_private; } ;
struct TYPE_7__ {TYPE_3__* tail; TYPE_3__* head; TYPE_1__* primary; } ;
typedef TYPE_2__ drm_mga_private_t ;
struct TYPE_10__ {int head; int wrap; } ;
struct TYPE_8__ {struct TYPE_8__* next; struct TYPE_8__* prev; TYPE_5__ age; } ;
typedef TYPE_3__ drm_mga_freelist_t ;
struct TYPE_9__ {TYPE_3__* list_entry; } ;
typedef TYPE_4__ drm_mga_buf_priv_t ;
struct TYPE_6__ {int offset; } ;


 int DRM_DEBUG (char*,unsigned long,int ) ;
 int MGA_BUFFER_FREE ;
 int MGA_BUFFER_USED ;
 int SET_AGE (TYPE_5__*,int ,int ) ;

int mga_freelist_put(struct drm_device *dev, struct drm_buf *buf)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 drm_mga_buf_priv_t *buf_priv = buf->dev_private;
 drm_mga_freelist_t *head, *entry, *prev;

 DRM_DEBUG("age=0x%06lx wrap=%d\n",
    (unsigned long)(buf_priv->list_entry->age.head -
      dev_priv->primary->offset),
    buf_priv->list_entry->age.wrap);

 entry = buf_priv->list_entry;
 head = dev_priv->head;

 if (buf_priv->list_entry->age.head == MGA_BUFFER_USED) {
  SET_AGE(&entry->age, MGA_BUFFER_FREE, 0);
  prev = dev_priv->tail;
  prev->next = entry;
  entry->prev = prev;
  entry->next = ((void*)0);
 } else {
  prev = head->next;
  head->next = entry;
  prev->prev = entry;
  entry->prev = head;
  entry->next = prev;
 }

 return 0;
}
