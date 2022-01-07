
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int ord; int axcache; struct device* dev; } ;
struct device {int dummy; } ;
struct ccp_device {int rngname; int name; int suspend_queue; int sb_queue; scalar_t__ sb_start; int sb_count; int sb_mutex; int req_mutex; int cmd_lock; int backlog; int cmd; int axcache; struct sp_device* sp; struct device* dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KSB_COUNT ;
 int MAX_CCP_NAME_LEN ;
 struct ccp_device* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snprintf (int ,int ,char*,int) ;
 int spin_lock_init (int *) ;

struct ccp_device *ccp_alloc_struct(struct sp_device *sp)
{
 struct device *dev = sp->dev;
 struct ccp_device *ccp;

 ccp = devm_kzalloc(dev, sizeof(*ccp), GFP_KERNEL);
 if (!ccp)
  return ((void*)0);
 ccp->dev = dev;
 ccp->sp = sp;
 ccp->axcache = sp->axcache;

 INIT_LIST_HEAD(&ccp->cmd);
 INIT_LIST_HEAD(&ccp->backlog);

 spin_lock_init(&ccp->cmd_lock);
 mutex_init(&ccp->req_mutex);
 mutex_init(&ccp->sb_mutex);
 ccp->sb_count = KSB_COUNT;
 ccp->sb_start = 0;


 init_waitqueue_head(&ccp->sb_queue);
 init_waitqueue_head(&ccp->suspend_queue);

 snprintf(ccp->name, MAX_CCP_NAME_LEN, "ccp-%u", sp->ord);
 snprintf(ccp->rngname, MAX_CCP_NAME_LEN, "ccp-%u-rng", sp->ord);

 return ccp;
}
