
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int dummy; } ;
struct vmw_cmdbuf_res_manager {int resources; int list; struct vmw_private* dev_priv; } ;


 int ENOMEM ;
 struct vmw_cmdbuf_res_manager* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int VMW_CMDBUF_RES_MAN_HT_ORDER ;
 int drm_ht_create (int *,int ) ;
 int kfree (struct vmw_cmdbuf_res_manager*) ;
 struct vmw_cmdbuf_res_manager* kzalloc (int,int ) ;

struct vmw_cmdbuf_res_manager *
vmw_cmdbuf_res_man_create(struct vmw_private *dev_priv)
{
 struct vmw_cmdbuf_res_manager *man;
 int ret;

 man = kzalloc(sizeof(*man), GFP_KERNEL);
 if (!man)
  return ERR_PTR(-ENOMEM);

 man->dev_priv = dev_priv;
 INIT_LIST_HEAD(&man->list);
 ret = drm_ht_create(&man->resources, VMW_CMDBUF_RES_MAN_HT_ORDER);
 if (ret == 0)
  return man;

 kfree(man);
 return ERR_PTR(ret);
}
