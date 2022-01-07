
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int id; } ;
struct vmw_cotable {int seen_entries; scalar_t__ type; } ;


 int DRM_ERROR (char*,unsigned int,int) ;
 int EINVAL ;
 int SVGA_COTABLE_MAX_IDS ;
 struct vmw_cotable* vmw_cotable (struct vmw_resource*) ;

int vmw_cotable_notify(struct vmw_resource *res, int id)
{
 struct vmw_cotable *vcotbl = vmw_cotable(res);

 if (id < 0 || id >= SVGA_COTABLE_MAX_IDS) {
  DRM_ERROR("Illegal COTable id. Type is %u. Id is %d\n",
     (unsigned) vcotbl->type, id);
  return -EINVAL;
 }

 if (vcotbl->seen_entries < id) {

  res->id = -1;
  vcotbl->seen_entries = id;
 }

 return 0;
}
