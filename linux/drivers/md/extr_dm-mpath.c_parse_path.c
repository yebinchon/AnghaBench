
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;
struct pgpath {TYPE_2__ path; int activate_path; } ;
struct path_selector {TYPE_1__* type; } ;
struct multipath {scalar_t__ hw_handler_name; } ;
struct dm_target {char* error; int table; struct multipath* private; } ;
struct dm_arg_set {int argc; int argv; } ;
struct TYPE_7__ {int bdev; } ;
struct TYPE_5__ {int (* add_path ) (struct path_selector*,TYPE_2__*,int,int ,char**) ;} ;


 int EINVAL ;
 int ENOMEM ;
 struct pgpath* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int activate_path_work ;
 struct pgpath* alloc_pgpath () ;
 struct request_queue* bdev_get_queue (int ) ;
 int dm_get_device (struct dm_target*,int ,int ,TYPE_3__**) ;
 int dm_put_device (struct dm_target*,TYPE_3__*) ;
 int dm_shift_arg (struct dm_arg_set*) ;
 int dm_table_get_mode (int ) ;
 int free_pgpath (struct pgpath*) ;
 int kfree (char const*) ;
 char* scsi_dh_attached_handler_name (struct request_queue*,int ) ;
 int setup_scsi_dh (int ,struct multipath*,char const**,char**) ;
 int stub1 (struct path_selector*,TYPE_2__*,int,int ,char**) ;

__attribute__((used)) static struct pgpath *parse_path(struct dm_arg_set *as, struct path_selector *ps,
     struct dm_target *ti)
{
 int r;
 struct pgpath *p;
 struct multipath *m = ti->private;
 struct request_queue *q;
 const char *attached_handler_name = ((void*)0);


 if (as->argc < 1) {
  ti->error = "no device given";
  return ERR_PTR(-EINVAL);
 }

 p = alloc_pgpath();
 if (!p)
  return ERR_PTR(-ENOMEM);

 r = dm_get_device(ti, dm_shift_arg(as), dm_table_get_mode(ti->table),
     &p->path.dev);
 if (r) {
  ti->error = "error getting device";
  goto bad;
 }

 q = bdev_get_queue(p->path.dev->bdev);
 attached_handler_name = scsi_dh_attached_handler_name(q, GFP_KERNEL);
 if (attached_handler_name || m->hw_handler_name) {
  INIT_DELAYED_WORK(&p->activate_path, activate_path_work);
  r = setup_scsi_dh(p->path.dev->bdev, m, &attached_handler_name, &ti->error);
  kfree(attached_handler_name);
  if (r) {
   dm_put_device(ti, p->path.dev);
   goto bad;
  }
 }

 r = ps->type->add_path(ps, &p->path, as->argc, as->argv, &ti->error);
 if (r) {
  dm_put_device(ti, p->path.dev);
  goto bad;
 }

 return p;
 bad:
 free_pgpath(p);
 return ERR_PTR(r);
}
