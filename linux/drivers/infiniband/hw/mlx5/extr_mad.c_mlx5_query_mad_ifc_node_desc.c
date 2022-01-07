
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct ib_smp {int data; int attr_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_DEVICE_NODE_DESC_MAX ;
 int IB_SMP_ATTR_NODE_DESC ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int memcpy (char*,int ,int ) ;
 int mlx5_MAD_IFC (struct mlx5_ib_dev*,int,int,int,int *,int *,struct ib_smp*,struct ib_smp*) ;

int mlx5_query_mad_ifc_node_desc(struct mlx5_ib_dev *dev, char *node_desc)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;

 in_mad = kzalloc(sizeof(*in_mad), GFP_KERNEL);
 out_mad = kmalloc(sizeof(*out_mad), GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_NODE_DESC;

 err = mlx5_MAD_IFC(dev, 1, 1, 1, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 memcpy(node_desc, out_mad->data, IB_DEVICE_NODE_DESC_MAX);
out:
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
