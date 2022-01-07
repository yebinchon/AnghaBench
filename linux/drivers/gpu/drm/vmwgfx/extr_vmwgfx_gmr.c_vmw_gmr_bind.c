
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sg_table {int dummy; } ;
struct vmw_private {int capabilities; } ;
struct vmw_piter {int dummy; } ;


 int EINVAL ;
 int SVGA_CAP_GMR2 ;
 scalar_t__ unlikely (int) ;
 int vmw_gmr2_bind (struct vmw_private*,struct vmw_piter*,unsigned long,int) ;
 int vmw_piter_next (struct vmw_piter*) ;
 int vmw_piter_start (struct vmw_piter*,struct vmw_sg_table const*,int ) ;

int vmw_gmr_bind(struct vmw_private *dev_priv,
   const struct vmw_sg_table *vsgt,
   unsigned long num_pages,
   int gmr_id)
{
 struct vmw_piter data_iter;

 vmw_piter_start(&data_iter, vsgt, 0);

 if (unlikely(!vmw_piter_next(&data_iter)))
  return 0;

 if (unlikely(!(dev_priv->capabilities & SVGA_CAP_GMR2)))
  return -EINVAL;

 return vmw_gmr2_bind(dev_priv, &data_iter, num_pages, gmr_id);
}
