
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic_res_chunk {int cnt; int type; struct usnic_vnic* vnic; struct usnic_vnic_res** res; int free_cnt; } ;
struct usnic_vnic_res {void* owner; } ;
struct usnic_vnic {int res_lock; struct usnic_vnic_res_chunk* chunks; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;


 int EINVAL ;
 int ENOMEM ;
 struct usnic_vnic_res_chunk* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int WARN_ON (int) ;
 struct usnic_vnic_res** kcalloc (int,int,int ) ;
 int kfree (struct usnic_vnic_res_chunk*) ;
 struct usnic_vnic_res_chunk* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usnic_vnic_res_free_cnt (struct usnic_vnic*,int) ;

struct usnic_vnic_res_chunk *
usnic_vnic_get_resources(struct usnic_vnic *vnic, enum usnic_vnic_res_type type,
    int cnt, void *owner)
{
 struct usnic_vnic_res_chunk *src, *ret;
 struct usnic_vnic_res *res;
 int i;

 if (usnic_vnic_res_free_cnt(vnic, type) < cnt || cnt < 0 || !owner)
  return ERR_PTR(-EINVAL);

 ret = kzalloc(sizeof(*ret), GFP_ATOMIC);
 if (!ret)
  return ERR_PTR(-ENOMEM);

 if (cnt > 0) {
  ret->res = kcalloc(cnt, sizeof(*(ret->res)), GFP_ATOMIC);
  if (!ret->res) {
   kfree(ret);
   return ERR_PTR(-ENOMEM);
  }

  spin_lock(&vnic->res_lock);
  src = &vnic->chunks[type];
  for (i = 0; i < src->cnt && ret->cnt < cnt; i++) {
   res = src->res[i];
   if (!res->owner) {
    src->free_cnt--;
    res->owner = owner;
    ret->res[ret->cnt++] = res;
   }
  }

  spin_unlock(&vnic->res_lock);
 }
 ret->type = type;
 ret->vnic = vnic;
 WARN_ON(ret->cnt != cnt);

 return ret;
}
