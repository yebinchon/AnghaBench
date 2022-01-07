
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {scalar_t__ raw; } ;
typedef int u8 ;
struct mlx4_ib_dev {int dev; } ;
struct ib_smp {scalar_t__ data; void* attr_mod; int attr_id; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_SMP_ATTR_GUID_INFO ;
 int IB_SMP_ATTR_PORT_INFO ;
 int MLX4_MAD_IFC_IGNORE_KEYS ;
 int MLX4_MAD_IFC_NET_VIEW ;
 void* cpu_to_be32 (int) ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int memset (scalar_t__,int ,int) ;
 int mlx4_MAD_IFC (struct mlx4_ib_dev*,int,int,int *,int *,struct ib_smp*,struct ib_smp*) ;
 scalar_t__ mlx4_is_mfunc (int ) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

int __mlx4_ib_query_gid(struct ib_device *ibdev, u8 port, int index,
   union ib_gid *gid, int netw_view)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;
 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 int clear = 0;
 int mad_ifc_flags = MLX4_MAD_IFC_IGNORE_KEYS;

 in_mad = kzalloc(sizeof *in_mad, GFP_KERNEL);
 out_mad = kmalloc(sizeof *out_mad, GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_PORT_INFO;
 in_mad->attr_mod = cpu_to_be32(port);

 if (mlx4_is_mfunc(dev->dev) && netw_view)
  mad_ifc_flags |= MLX4_MAD_IFC_NET_VIEW;

 err = mlx4_MAD_IFC(dev, mad_ifc_flags, port, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 memcpy(gid->raw, out_mad->data + 8, 8);

 if (mlx4_is_mfunc(dev->dev) && !netw_view) {
  if (index) {

   err = 0;
   clear = 1;
   goto out;
  }
 }

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_GUID_INFO;
 in_mad->attr_mod = cpu_to_be32(index / 8);

 err = mlx4_MAD_IFC(dev, mad_ifc_flags, port,
      ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 memcpy(gid->raw + 8, out_mad->data + (index % 8) * 8, 8);

out:
 if (clear)
  memset(gid->raw + 8, 0, 8);
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
