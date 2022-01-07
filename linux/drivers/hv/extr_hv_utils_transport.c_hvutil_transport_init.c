
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_6__ {scalar_t__ idx; scalar_t__ val; } ;
struct TYPE_5__ {char const* name; TYPE_1__* fops; int minor; } ;
struct TYPE_4__ {int release; int open; int poll; int write; int read; int owner; } ;
struct hvutil_transport {int (* on_msg ) (void*,int) ;void (* on_reset ) () ;int list; TYPE_3__ cn_id; TYPE_2__ mdev; int release; int lock; int outmsg_q; TYPE_1__ fops; } ;


 int GFP_KERNEL ;
 int MISC_DYNAMIC_MINOR ;
 int THIS_MODULE ;
 scalar_t__ cn_add_callback (TYPE_3__*,char const*,int ) ;
 int hvt_cn_callback ;
 int hvt_list ;
 int hvt_list_lock ;
 int hvt_op_open ;
 int hvt_op_poll ;
 int hvt_op_read ;
 int hvt_op_release ;
 int hvt_op_write ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct hvutil_transport*) ;
 struct hvutil_transport* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 scalar_t__ misc_register (TYPE_2__*) ;
 int mutex_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct hvutil_transport *hvutil_transport_init(const char *name,
            u32 cn_idx, u32 cn_val,
            int (*on_msg)(void *, int),
            void (*on_reset)(void))
{
 struct hvutil_transport *hvt;

 hvt = kzalloc(sizeof(*hvt), GFP_KERNEL);
 if (!hvt)
  return ((void*)0);

 hvt->cn_id.idx = cn_idx;
 hvt->cn_id.val = cn_val;

 hvt->mdev.minor = MISC_DYNAMIC_MINOR;
 hvt->mdev.name = name;

 hvt->fops.owner = THIS_MODULE;
 hvt->fops.read = hvt_op_read;
 hvt->fops.write = hvt_op_write;
 hvt->fops.poll = hvt_op_poll;
 hvt->fops.open = hvt_op_open;
 hvt->fops.release = hvt_op_release;

 hvt->mdev.fops = &hvt->fops;

 init_waitqueue_head(&hvt->outmsg_q);
 mutex_init(&hvt->lock);
 init_completion(&hvt->release);

 spin_lock(&hvt_list_lock);
 list_add(&hvt->list, &hvt_list);
 spin_unlock(&hvt_list_lock);

 hvt->on_msg = on_msg;
 hvt->on_reset = on_reset;

 if (misc_register(&hvt->mdev))
  goto err_free_hvt;


 if (hvt->cn_id.idx > 0 && hvt->cn_id.val > 0 &&
     cn_add_callback(&hvt->cn_id, name, hvt_cn_callback))
  goto err_free_hvt;

 return hvt;

err_free_hvt:
 spin_lock(&hvt_list_lock);
 list_del(&hvt->list);
 spin_unlock(&hvt_list_lock);
 kfree(hvt);
 return ((void*)0);
}
