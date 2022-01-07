
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_mst_branch {int lct; int malloc_kref; int topology_kref; int ports; int rad; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 struct drm_dp_mst_branch* kzalloc (int,int ) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static struct drm_dp_mst_branch *drm_dp_add_mst_branch_device(u8 lct, u8 *rad)
{
 struct drm_dp_mst_branch *mstb;

 mstb = kzalloc(sizeof(*mstb), GFP_KERNEL);
 if (!mstb)
  return ((void*)0);

 mstb->lct = lct;
 if (lct > 1)
  memcpy(mstb->rad, rad, lct / 2);
 INIT_LIST_HEAD(&mstb->ports);
 kref_init(&mstb->topology_kref);
 kref_init(&mstb->malloc_kref);
 return mstb;
}
