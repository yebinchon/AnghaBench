
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {scalar_t__ in_sync_hint; scalar_t__ region_count; int uuid; } ;
struct dm_dirty_log {struct log_c* context; } ;
typedef int region_t ;
typedef int pkg ;
typedef scalar_t__ int64_t ;


 int DM_ULOG_GET_RESYNC_WORK ;
 int userspace_do_request (struct log_c*,int ,int ,int *,int ,char*,size_t*) ;

__attribute__((used)) static int userspace_get_resync_work(struct dm_dirty_log *log, region_t *region)
{
 int r;
 size_t rdata_size;
 struct log_c *lc = log->context;
 struct {
  int64_t i;
  region_t r;
 } pkg;

 if (lc->in_sync_hint >= lc->region_count)
  return 0;

 rdata_size = sizeof(pkg);
 r = userspace_do_request(lc, lc->uuid, DM_ULOG_GET_RESYNC_WORK,
     ((void*)0), 0, (char *)&pkg, &rdata_size);

 *region = pkg.r;
 return (r) ? r : (int)pkg.i;
}
