
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {int attr_id; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_SMP_ATTR_NODE_INFO ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kzalloc (int,int ) ;
 int mlx5_MAD_IFC (int ,int,int,int,int *,int *,struct ib_smp*,struct ib_smp*) ;
 int to_mdev (struct ib_device*) ;

int mlx5_query_mad_ifc_smp_attr_node_info(struct ib_device *ibdev,
       struct ib_smp *out_mad)
{
 struct ib_smp *in_mad = ((void*)0);
 int err = -ENOMEM;

 in_mad = kzalloc(sizeof(*in_mad), GFP_KERNEL);
 if (!in_mad)
  return -ENOMEM;

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_NODE_INFO;

 err = mlx5_MAD_IFC(to_mdev(ibdev), 1, 1, 1, ((void*)0), ((void*)0), in_mad,
      out_mad);

 kfree(in_mad);
 return err;
}
