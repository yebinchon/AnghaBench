
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {int lessee_idr; int leases; int lessee_list; int lessees; struct drm_device* dev; int magic_map; int refcount; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int drm_master_legacy_init (struct drm_master*) ;
 int idr_init (int *) ;
 int kref_init (int *) ;
 struct drm_master* kzalloc (int,int ) ;

struct drm_master *drm_master_create(struct drm_device *dev)
{
 struct drm_master *master;

 master = kzalloc(sizeof(*master), GFP_KERNEL);
 if (!master)
  return ((void*)0);

 kref_init(&master->refcount);
 drm_master_legacy_init(master);
 idr_init(&master->magic_map);
 master->dev = dev;


 INIT_LIST_HEAD(&master->lessees);
 INIT_LIST_HEAD(&master->lessee_list);
 idr_init(&master->leases);
 idr_init(&master->lessee_idr);

 return master;
}
