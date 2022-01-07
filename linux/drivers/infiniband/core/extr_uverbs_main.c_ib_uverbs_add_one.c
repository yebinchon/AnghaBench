
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ devt; int ** groups; int release; int parent; int class; } ;
struct TYPE_12__ {int owner; } ;
struct ib_uverbs_device {int devnum; TYPE_3__ dev; int comp; int refcount; TYPE_6__ cdev; int num_comp_vectors; int ib_dev; int uverbs_events_file_list; int uverbs_file_list; int lists_mutex; int xrcd_tree_mutex; int xrcd_tree; int ** groups; int disassociate_srcu; } ;
struct TYPE_10__ {scalar_t__ mmap; int alloc_ucontext; } ;
struct TYPE_9__ {int parent; } ;
struct ib_device {TYPE_2__ ops; int num_comp_vectors; TYPE_1__ dev; } ;
typedef scalar_t__ dev_t ;


 int GFP_KERNEL ;
 scalar_t__ IB_UVERBS_BASE_DEV ;
 scalar_t__ IB_UVERBS_MAX_DEVICES ;
 int IB_UVERBS_NUM_FIXED_MINOR ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int THIS_MODULE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_set (int *,int) ;
 int cdev_device_add (TYPE_6__*,TYPE_3__*) ;
 int cdev_init (TYPE_6__*,int *) ;
 int dev_attr_group ;
 int dev_set_name (TYPE_3__*,char*,int) ;
 int device_initialize (TYPE_3__*) ;
 scalar_t__ dynamic_uverbs_dev ;
 int ib_set_client_data (struct ib_device*,int *,struct ib_uverbs_device*) ;
 int ib_uverbs_comp_dev (struct ib_uverbs_device*) ;
 scalar_t__ ib_uverbs_create_uapi (struct ib_device*,struct ib_uverbs_device*) ;
 int ib_uverbs_release_dev ;
 int ida_alloc_max (int *,scalar_t__,int ) ;
 int ida_free (int *,int) ;
 int init_completion (int *) ;
 int init_srcu_struct (int *) ;
 int kfree (struct ib_uverbs_device*) ;
 struct ib_uverbs_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int put_device (TYPE_3__*) ;
 int rcu_assign_pointer (int ,struct ib_device*) ;
 int uverbs_class ;
 int uverbs_client ;
 int uverbs_fops ;
 int uverbs_ida ;
 int uverbs_mmap_fops ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ib_uverbs_add_one(struct ib_device *device)
{
 int devnum;
 dev_t base;
 struct ib_uverbs_device *uverbs_dev;
 int ret;

 if (!device->ops.alloc_ucontext)
  return;

 uverbs_dev = kzalloc(sizeof(*uverbs_dev), GFP_KERNEL);
 if (!uverbs_dev)
  return;

 ret = init_srcu_struct(&uverbs_dev->disassociate_srcu);
 if (ret) {
  kfree(uverbs_dev);
  return;
 }

 device_initialize(&uverbs_dev->dev);
 uverbs_dev->dev.class = uverbs_class;
 uverbs_dev->dev.parent = device->dev.parent;
 uverbs_dev->dev.release = ib_uverbs_release_dev;
 uverbs_dev->groups[0] = &dev_attr_group;
 uverbs_dev->dev.groups = uverbs_dev->groups;
 atomic_set(&uverbs_dev->refcount, 1);
 init_completion(&uverbs_dev->comp);
 uverbs_dev->xrcd_tree = RB_ROOT;
 mutex_init(&uverbs_dev->xrcd_tree_mutex);
 mutex_init(&uverbs_dev->lists_mutex);
 INIT_LIST_HEAD(&uverbs_dev->uverbs_file_list);
 INIT_LIST_HEAD(&uverbs_dev->uverbs_events_file_list);
 rcu_assign_pointer(uverbs_dev->ib_dev, device);
 uverbs_dev->num_comp_vectors = device->num_comp_vectors;

 devnum = ida_alloc_max(&uverbs_ida, IB_UVERBS_MAX_DEVICES - 1,
          GFP_KERNEL);
 if (devnum < 0)
  goto err;
 uverbs_dev->devnum = devnum;
 if (devnum >= IB_UVERBS_NUM_FIXED_MINOR)
  base = dynamic_uverbs_dev + devnum - IB_UVERBS_NUM_FIXED_MINOR;
 else
  base = IB_UVERBS_BASE_DEV + devnum;

 if (ib_uverbs_create_uapi(device, uverbs_dev))
  goto err_uapi;

 uverbs_dev->dev.devt = base;
 dev_set_name(&uverbs_dev->dev, "uverbs%d", uverbs_dev->devnum);

 cdev_init(&uverbs_dev->cdev,
    device->ops.mmap ? &uverbs_mmap_fops : &uverbs_fops);
 uverbs_dev->cdev.owner = THIS_MODULE;

 ret = cdev_device_add(&uverbs_dev->cdev, &uverbs_dev->dev);
 if (ret)
  goto err_uapi;

 ib_set_client_data(device, &uverbs_client, uverbs_dev);
 return;

err_uapi:
 ida_free(&uverbs_ida, devnum);
err:
 if (atomic_dec_and_test(&uverbs_dev->refcount))
  ib_uverbs_comp_dev(uverbs_dev);
 wait_for_completion(&uverbs_dev->comp);
 put_device(&uverbs_dev->dev);
 return;
}
