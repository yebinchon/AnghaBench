
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vmw_resource {int id; scalar_t__ backup_size; struct vmw_private* dev_priv; } ;
struct vmw_private {int used_memory_size; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int * VMW_FIFO_RESERVE (struct vmw_private*,int ) ;
 scalar_t__ unlikely (int) ;
 int vmw_fifo_commit (struct vmw_private*,int ) ;
 int vmw_fifo_resource_dec (struct vmw_private*) ;
 int vmw_resource_release_id (struct vmw_resource*) ;
 int vmw_surface_destroy_encode (int,int *) ;
 int vmw_surface_destroy_size () ;

__attribute__((used)) static int vmw_legacy_srf_destroy(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;
 uint32_t submit_size;
 uint8_t *cmd;

 BUG_ON(res->id == -1);





 submit_size = vmw_surface_destroy_size();
 cmd = VMW_FIFO_RESERVE(dev_priv, submit_size);
 if (unlikely(!cmd))
  return -ENOMEM;

 vmw_surface_destroy_encode(res->id, cmd);
 vmw_fifo_commit(dev_priv, submit_size);





 dev_priv->used_memory_size -= res->backup_size;





 vmw_resource_release_id(res);
 vmw_fifo_resource_dec(dev_priv);

 return 0;
}
