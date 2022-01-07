
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb_node {int entry; struct urb* urb; int release_urb_work; struct udl_device* dev; } ;
struct urb {int transfer_flags; int transfer_dma; } ;
struct TYPE_2__ {size_t size; size_t count; scalar_t__ available; int limit_sem; int list; int lock; } ;
struct udl_device {TYPE_1__ urbs; int udev; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,size_t,int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 size_t PAGE_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int kfree (struct urb_node*) ;
 struct urb_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sema_init (int *,int ) ;
 int spin_lock_init (int *) ;
 struct udl_device* to_udl (struct drm_device*) ;
 int udl_free_urb_list (struct drm_device*) ;
 int udl_release_urb_work ;
 int udl_urb_completion ;
 int up (int *) ;
 char* usb_alloc_coherent (int ,size_t,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,char*,size_t,int ,struct urb_node*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int udl_alloc_urb_list(struct drm_device *dev, int count, size_t size)
{
 struct udl_device *udl = to_udl(dev);
 struct urb *urb;
 struct urb_node *unode;
 char *buf;
 size_t wanted_size = count * size;

 spin_lock_init(&udl->urbs.lock);

retry:
 udl->urbs.size = size;
 INIT_LIST_HEAD(&udl->urbs.list);

 sema_init(&udl->urbs.limit_sem, 0);
 udl->urbs.count = 0;
 udl->urbs.available = 0;

 while (udl->urbs.count * size < wanted_size) {
  unode = kzalloc(sizeof(struct urb_node), GFP_KERNEL);
  if (!unode)
   break;
  unode->dev = udl;

  INIT_DELAYED_WORK(&unode->release_urb_work,
     udl_release_urb_work);

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   kfree(unode);
   break;
  }
  unode->urb = urb;

  buf = usb_alloc_coherent(udl->udev, size, GFP_KERNEL,
      &urb->transfer_dma);
  if (!buf) {
   kfree(unode);
   usb_free_urb(urb);
   if (size > PAGE_SIZE) {
    size /= 2;
    udl_free_urb_list(dev);
    goto retry;
   }
   break;
  }


  usb_fill_bulk_urb(urb, udl->udev, usb_sndbulkpipe(udl->udev, 1),
   buf, size, udl_urb_completion, unode);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

  list_add_tail(&unode->entry, &udl->urbs.list);

  up(&udl->urbs.limit_sem);
  udl->urbs.count++;
  udl->urbs.available++;
 }

 DRM_DEBUG("allocated %d %d byte urbs\n", udl->urbs.count, (int) size);

 return udl->urbs.count;
}
