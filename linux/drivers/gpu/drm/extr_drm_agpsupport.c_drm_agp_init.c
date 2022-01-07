
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int pdev; } ;
struct TYPE_2__ {scalar_t__ chipset; int aper_base; int page_mask; int cant_use_aperture; } ;
struct drm_agp_head {TYPE_1__ agp_info; int base; int page_mask; int cant_use_aperture; int memory; scalar_t__ bridge; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NOT_SUPPORTED ;
 scalar_t__ agp_backend_acquire (int ) ;
 int agp_backend_release (scalar_t__) ;
 int agp_copy_info (scalar_t__,TYPE_1__*) ;
 scalar_t__ agp_find_bridge (int ) ;
 int kfree (struct drm_agp_head*) ;
 struct drm_agp_head* kzalloc (int,int ) ;

struct drm_agp_head *drm_agp_init(struct drm_device *dev)
{
 struct drm_agp_head *head = ((void*)0);

 head = kzalloc(sizeof(*head), GFP_KERNEL);
 if (!head)
  return ((void*)0);
 head->bridge = agp_find_bridge(dev->pdev);
 if (!head->bridge) {
  head->bridge = agp_backend_acquire(dev->pdev);
  if (!head->bridge) {
   kfree(head);
   return ((void*)0);
  }
  agp_copy_info(head->bridge, &head->agp_info);
  agp_backend_release(head->bridge);
 } else {
  agp_copy_info(head->bridge, &head->agp_info);
 }
 if (head->agp_info.chipset == NOT_SUPPORTED) {
  kfree(head);
  return ((void*)0);
 }
 INIT_LIST_HEAD(&head->memory);
 head->cant_use_aperture = head->agp_info.cant_use_aperture;
 head->page_mask = head->agp_info.page_mask;
 head->base = head->agp_info.aper_base;
 return head;
}
