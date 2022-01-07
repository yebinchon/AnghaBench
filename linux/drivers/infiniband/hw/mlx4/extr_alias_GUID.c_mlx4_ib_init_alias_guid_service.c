
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct mlx4_sriov_alias_guid_port_rec_det {int dummy; } ;
struct TYPE_9__ {int * sa_client; TYPE_6__* ports_guid; int ag_work_lock; } ;
struct TYPE_10__ {TYPE_3__ alias_guid; } ;
struct TYPE_7__ {scalar_t__ (* query_gid ) (TYPE_5__*,int,int ,union ib_gid*) ;} ;
struct TYPE_11__ {TYPE_1__ ops; } ;
struct mlx4_ib_dev {int num_ports; TYPE_4__ sriov; int dev; TYPE_5__ ib_dev; } ;
struct TYPE_12__ {int port; int * wq; int alias_guid_work; TYPE_3__* parent; int cb_list; TYPE_2__* all_rec_per_port; int state_flags; } ;
struct TYPE_8__ {TYPE_6__* all_recs; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GUID_STATE_NEED_PORT_INIT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int NUM_ALIAS_GUID_PER_PORT ;
 int NUM_ALIAS_GUID_REC_IN_PORT ;
 int WQ_MEM_RECLAIM ;
 int alias_guid_work ;
 int * alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int *) ;
 int ib_sa_register_client (int *) ;
 int ib_sa_unregister_client (int *) ;
 int invalidate_guid_record (struct mlx4_ib_dev*,int,int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memset (TYPE_6__*,int,int) ;
 scalar_t__ mlx4_ib_sm_guid_assign ;
 int mlx4_is_master (int ) ;
 int mlx4_set_admin_guid (int ,int ,int,int) ;
 int pr_err (char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ stub1 (TYPE_5__*,int,int ,union ib_gid*) ;

int mlx4_ib_init_alias_guid_service(struct mlx4_ib_dev *dev)
{
 char alias_wq_name[15];
 int ret = 0;
 int i, j;
 union ib_gid gid;

 if (!mlx4_is_master(dev->dev))
  return 0;
 dev->sriov.alias_guid.sa_client =
  kzalloc(sizeof *dev->sriov.alias_guid.sa_client, GFP_KERNEL);
 if (!dev->sriov.alias_guid.sa_client)
  return -ENOMEM;

 ib_sa_register_client(dev->sriov.alias_guid.sa_client);

 spin_lock_init(&dev->sriov.alias_guid.ag_work_lock);

 for (i = 1; i <= dev->num_ports; ++i) {
  if (dev->ib_dev.ops.query_gid(&dev->ib_dev, i, 0, &gid)) {
   ret = -EFAULT;
   goto err_unregister;
  }
 }

 for (i = 0 ; i < dev->num_ports; i++) {
  memset(&dev->sriov.alias_guid.ports_guid[i], 0,
         sizeof (struct mlx4_sriov_alias_guid_port_rec_det));
  dev->sriov.alias_guid.ports_guid[i].state_flags |=
    GUID_STATE_NEED_PORT_INIT;
  for (j = 0; j < NUM_ALIAS_GUID_REC_IN_PORT; j++) {

   memset(dev->sriov.alias_guid.ports_guid[i].
    all_rec_per_port[j].all_recs, 0xFF,
    sizeof(dev->sriov.alias_guid.ports_guid[i].
    all_rec_per_port[j].all_recs));
  }
  INIT_LIST_HEAD(&dev->sriov.alias_guid.ports_guid[i].cb_list);

  if (mlx4_ib_sm_guid_assign)
   for (j = 1; j < NUM_ALIAS_GUID_PER_PORT; j++)
    mlx4_set_admin_guid(dev->dev, 0, j, i + 1);
  for (j = 0 ; j < NUM_ALIAS_GUID_REC_IN_PORT; j++)
   invalidate_guid_record(dev, i + 1, j);

  dev->sriov.alias_guid.ports_guid[i].parent = &dev->sriov.alias_guid;
  dev->sriov.alias_guid.ports_guid[i].port = i;

  snprintf(alias_wq_name, sizeof alias_wq_name, "alias_guid%d", i);
  dev->sriov.alias_guid.ports_guid[i].wq =
   alloc_ordered_workqueue(alias_wq_name, WQ_MEM_RECLAIM);
  if (!dev->sriov.alias_guid.ports_guid[i].wq) {
   ret = -ENOMEM;
   goto err_thread;
  }
  INIT_DELAYED_WORK(&dev->sriov.alias_guid.ports_guid[i].alias_guid_work,
     alias_guid_work);
 }
 return 0;

err_thread:
 for (--i; i >= 0; i--) {
  destroy_workqueue(dev->sriov.alias_guid.ports_guid[i].wq);
  dev->sriov.alias_guid.ports_guid[i].wq = ((void*)0);
 }

err_unregister:
 ib_sa_unregister_client(dev->sriov.alias_guid.sa_client);
 kfree(dev->sriov.alias_guid.sa_client);
 dev->sriov.alias_guid.sa_client = ((void*)0);
 pr_err("init_alias_guid_service: Failed. (ret:%d)\n", ret);
 return ret;
}
