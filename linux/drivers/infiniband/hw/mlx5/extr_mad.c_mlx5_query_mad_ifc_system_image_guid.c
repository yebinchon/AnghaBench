
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {scalar_t__ data; } ;
struct ib_device {int dummy; } ;
typedef int __be64 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int mlx5_query_mad_ifc_smp_attr_node_info (struct ib_device*,struct ib_smp*) ;

int mlx5_query_mad_ifc_system_image_guid(struct ib_device *ibdev,
      __be64 *sys_image_guid)
{
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;

 out_mad = kmalloc(sizeof(*out_mad), GFP_KERNEL);
 if (!out_mad)
  return -ENOMEM;

 err = mlx5_query_mad_ifc_smp_attr_node_info(ibdev, out_mad);
 if (err)
  goto out;

 memcpy(sys_image_guid, out_mad->data + 4, 8);

out:
 kfree(out_mad);

 return err;
}
