
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu_queue {unsigned long q_type; int list; int jobs; int lock; int sharing; } ;
struct spu_mdesc_info {int dummy; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mdesc_handle {int dummy; } ;
struct list_head {int dummy; } ;
typedef int irq_handler_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cpumask_clear (int *) ;
 int dev_err (TYPE_1__*,char*,int ) ;
 struct spu_queue* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int spin_lock_init (int *) ;
 int spu_map_ino (struct platform_device*,struct spu_mdesc_info*,char const*,struct spu_queue*,int ) ;
 int spu_mdesc_walk_arcs (struct mdesc_handle*,struct platform_device*,int ,struct spu_queue*,struct spu_queue**) ;
 int spu_queue_setup (struct spu_queue*) ;

__attribute__((used)) static int handle_exec_unit(struct spu_mdesc_info *ip, struct list_head *list,
       struct platform_device *dev, struct mdesc_handle *mdesc,
       u64 node, const char *iname, unsigned long q_type,
       irq_handler_t handler, struct spu_queue **table)
{
 struct spu_queue *p;
 int err;

 p = kzalloc(sizeof(struct spu_queue), GFP_KERNEL);
 if (!p) {
  dev_err(&dev->dev, "%pOF: Could not allocate SPU queue.\n",
   dev->dev.of_node);
  return -ENOMEM;
 }

 cpumask_clear(&p->sharing);
 spin_lock_init(&p->lock);
 p->q_type = q_type;
 INIT_LIST_HEAD(&p->jobs);
 list_add(&p->list, list);

 err = spu_mdesc_walk_arcs(mdesc, dev, node, p, table);
 if (err)
  return err;

 err = spu_queue_setup(p);
 if (err)
  return err;

 return spu_map_ino(dev, ip, iname, p, handler);
}
