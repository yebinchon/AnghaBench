
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int uuid; } ;
struct dm_dirty_log {struct log_c* context; } ;
typedef int region_t ;
typedef int pkg ;
typedef scalar_t__ int64_t ;


 int DM_ULOG_SET_REGION_SYNC ;
 int userspace_do_request (struct log_c*,int ,int ,char*,int,int *,int *) ;

__attribute__((used)) static void userspace_set_region_sync(struct dm_dirty_log *log,
          region_t region, int in_sync)
{
 struct log_c *lc = log->context;
 struct {
  region_t r;
  int64_t i;
 } pkg;

 pkg.r = region;
 pkg.i = (int64_t)in_sync;

 (void) userspace_do_request(lc, lc->uuid, DM_ULOG_SET_REGION_SYNC,
        (char *)&pkg, sizeof(pkg), ((void*)0), ((void*)0));





 return;
}
