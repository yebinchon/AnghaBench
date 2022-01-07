
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union sl2vl_tbl_to_u64 {int* sl8; int sl64; } ;
typedef int u8 ;
typedef int u32 ;
typedef void* u16 ;
struct TYPE_10__ {int is_going_down; } ;
struct TYPE_9__ {void*** phys_pkey_cache; } ;
struct mlx4_ib_dev {int * sl2vl; TYPE_5__* dev; TYPE_3__ sriov; TYPE_2__ pkeys; } ;
struct ib_smp {int* data; int attr_mod; } ;
struct ib_port_info {int neighbormtu_mastersmsl; int clientrereg_resv_subnetto; int sm_lid; int lid; } ;
struct TYPE_8__ {scalar_t__ mgmt_class; scalar_t__ method; int attr_id; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;
typedef int __be16 ;
struct TYPE_11__ {int flags; int flags2; } ;
struct TYPE_12__ {TYPE_4__ caps; } ;


 int IB_EVENT_GID_CHANGE ;
 int IB_EVENT_PKEY_CHANGE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 scalar_t__ IB_MGMT_METHOD_SET ;




 int MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT ;
 int MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV ;
 int __propagate_pkey_ev (struct mlx4_ib_dev*,int ,int,int) ;
 int atomic64_set (int *,int ) ;
 void* be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int handle_client_rereg_event (struct mlx4_ib_dev*,int ) ;
 int handle_lid_change_event (struct mlx4_ib_dev*,int ) ;
 int mlx4_ib_dispatch_event (struct mlx4_ib_dev*,int ,int ) ;
 int mlx4_ib_notify_slaves_on_guid_change (struct mlx4_ib_dev*,int,int ,int *) ;
 int mlx4_ib_update_cache_on_guid_change (struct mlx4_ib_dev*,int,int ,int *) ;
 int mlx4_is_master (TYPE_5__*) ;
 int mlx4_is_mfunc (TYPE_5__*) ;
 int mlx4_is_slave (TYPE_5__*) ;
 int pr_debug (char*,int ,int,...) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;
 int update_sm_ah (struct mlx4_ib_dev*,int ,void*,int) ;

__attribute__((used)) static void smp_snoop(struct ib_device *ibdev, u8 port_num, const struct ib_mad *mad,
        u16 prev_lid)
{
 struct ib_port_info *pinfo;
 u16 lid;
 __be16 *base;
 u32 bn, pkey_change_bitmap;
 int i;


 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 if ((mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
      mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) &&
     mad->mad_hdr.method == IB_MGMT_METHOD_SET)
  switch (mad->mad_hdr.attr_id) {
  case 129:
   if (dev->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV)
    return;
   pinfo = (struct ib_port_info *) ((struct ib_smp *) mad)->data;
   lid = be16_to_cpu(pinfo->lid);

   update_sm_ah(dev, port_num,
         be16_to_cpu(pinfo->sm_lid),
         pinfo->neighbormtu_mastersmsl & 0xf);

   if (pinfo->clientrereg_resv_subnetto & 0x80)
    handle_client_rereg_event(dev, port_num);

   if (prev_lid != lid)
    handle_lid_change_event(dev, port_num);
   break;

  case 130:
   if (dev->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV)
    return;
   if (!mlx4_is_mfunc(dev->dev)) {
    mlx4_ib_dispatch_event(dev, port_num,
             IB_EVENT_PKEY_CHANGE);
    break;
   }




   bn = be32_to_cpu(((struct ib_smp *)mad)->attr_mod) & 0xFFFF;
   base = (__be16 *) &(((struct ib_smp *)mad)->data[0]);
   pkey_change_bitmap = 0;
   for (i = 0; i < 32; i++) {
    pr_debug("PKEY[%d] = x%x\n",
      i + bn*32, be16_to_cpu(base[i]));
    if (be16_to_cpu(base[i]) !=
        dev->pkeys.phys_pkey_cache[port_num - 1][i + bn*32]) {
     pkey_change_bitmap |= (1 << i);
     dev->pkeys.phys_pkey_cache[port_num - 1][i + bn*32] =
      be16_to_cpu(base[i]);
    }
   }
   pr_debug("PKEY Change event: port=%d, "
     "block=0x%x, change_bitmap=0x%x\n",
     port_num, bn, pkey_change_bitmap);

   if (pkey_change_bitmap) {
    mlx4_ib_dispatch_event(dev, port_num,
             IB_EVENT_PKEY_CHANGE);
    if (!dev->sriov.is_going_down)
     __propagate_pkey_ev(dev, port_num, bn,
           pkey_change_bitmap);
   }
   break;

  case 131:
   if (dev->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV)
    return;

   if (!mlx4_is_master(dev->dev))
    mlx4_ib_dispatch_event(dev, port_num,
             IB_EVENT_GID_CHANGE);

   if (mlx4_is_master(dev->dev) &&
       !dev->sriov.is_going_down) {
    bn = be32_to_cpu(((struct ib_smp *)mad)->attr_mod);
    mlx4_ib_update_cache_on_guid_change(dev, bn, port_num,
            (u8 *)(&((struct ib_smp *)mad)->data));
    mlx4_ib_notify_slaves_on_guid_change(dev, bn, port_num,
             (u8 *)(&((struct ib_smp *)mad)->data));
   }
   break;

  case 128:



   if (dev->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV &&
       dev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT)
    return;
   if (!mlx4_is_slave(dev->dev)) {
    union sl2vl_tbl_to_u64 sl2vl64;
    int jj;

    for (jj = 0; jj < 8; jj++) {
     sl2vl64.sl8[jj] = ((struct ib_smp *)mad)->data[jj];
     pr_debug("port %u, sl2vl[%d] = %02x\n",
       port_num, jj, sl2vl64.sl8[jj]);
    }
    atomic64_set(&dev->sl2vl[port_num - 1], sl2vl64.sl64);
   }
   break;

  default:
   break;
  }
}
