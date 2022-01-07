
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_c {struct pool* pool; } ;
struct pool {int dummy; } ;
struct dm_target {struct pool_c* private; } ;


 int bind_control_target (struct pool*,struct dm_target*) ;
 int commit (struct pool*) ;
 int maybe_resize_data_dev (struct dm_target*,int*) ;
 int maybe_resize_metadata_dev (struct dm_target*,int*) ;

__attribute__((used)) static int pool_preresume(struct dm_target *ti)
{
 int r;
 bool need_commit1, need_commit2;
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;




 r = bind_control_target(pool, ti);
 if (r)
  return r;

 r = maybe_resize_data_dev(ti, &need_commit1);
 if (r)
  return r;

 r = maybe_resize_metadata_dev(ti, &need_commit2);
 if (r)
  return r;

 if (need_commit1 || need_commit2)
  (void) commit(pool);

 return 0;
}
