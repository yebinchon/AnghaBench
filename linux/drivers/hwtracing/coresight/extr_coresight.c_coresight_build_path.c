
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct coresight_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct list_head* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int _coresight_build_path (struct coresight_device*,struct coresight_device*,struct list_head*) ;
 int kfree (struct list_head*) ;
 struct list_head* kzalloc (int,int ) ;

struct list_head *coresight_build_path(struct coresight_device *source,
           struct coresight_device *sink)
{
 struct list_head *path;
 int rc;

 if (!sink)
  return ERR_PTR(-EINVAL);

 path = kzalloc(sizeof(struct list_head), GFP_KERNEL);
 if (!path)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(path);

 rc = _coresight_build_path(source, sink, path);
 if (rc) {
  kfree(path);
  return ERR_PTR(rc);
 }

 return path;
}
