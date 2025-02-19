
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_smp {scalar_t__ data; } ;
struct ib_device {int dummy; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int be32_to_cpup (int *) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 int mlx5_query_mad_ifc_smp_attr_node_info (struct ib_device*,struct ib_smp*) ;

int mlx5_query_mad_ifc_vendor_id(struct ib_device *ibdev,
     u32 *vendor_id)
{
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;

 out_mad = kmalloc(sizeof(*out_mad), GFP_KERNEL);
 if (!out_mad)
  return -ENOMEM;

 err = mlx5_query_mad_ifc_smp_attr_node_info(ibdev, out_mad);
 if (err)
  goto out;

 *vendor_id = be32_to_cpup((__be32 *)(out_mad->data + 36)) & 0xffff;

out:
 kfree(out_mad);

 return err;
}
