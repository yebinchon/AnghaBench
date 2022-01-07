
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct log_c {int uuid; } ;
struct dm_dirty_log {struct log_c* context; } ;
typedef int region_t ;
typedef int region64 ;
typedef int is_clean ;
typedef scalar_t__ int64_t ;


 int DM_ULOG_IS_CLEAN ;
 int userspace_do_request (struct log_c*,int ,int ,char*,int,char*,size_t*) ;

__attribute__((used)) static int userspace_is_clean(struct dm_dirty_log *log, region_t region)
{
 int r;
 uint64_t region64 = (uint64_t)region;
 int64_t is_clean;
 size_t rdata_size;
 struct log_c *lc = log->context;

 rdata_size = sizeof(is_clean);
 r = userspace_do_request(lc, lc->uuid, DM_ULOG_IS_CLEAN,
     (char *)&region64, sizeof(region64),
     (char *)&is_clean, &rdata_size);

 return (r) ? 0 : (int)is_clean;
}
