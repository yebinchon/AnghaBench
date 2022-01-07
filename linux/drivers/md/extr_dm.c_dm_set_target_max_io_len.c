
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dm_target {char* error; scalar_t__ max_io_len; } ;
typedef scalar_t__ sector_t ;


 int DMERR (char*,unsigned long long,scalar_t__) ;
 int EINVAL ;
 scalar_t__ UINT_MAX ;

int dm_set_target_max_io_len(struct dm_target *ti, sector_t len)
{
 if (len > UINT_MAX) {
  DMERR("Specified maximum size of target IO (%llu) exceeds limit (%u)",
        (unsigned long long)len, UINT_MAX);
  ti->error = "Maximum size of target IO is too large";
  return -EINVAL;
 }

 ti->max_io_len = (uint32_t) len;

 return 0;
}
