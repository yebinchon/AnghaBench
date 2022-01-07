
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_if_no_space; } ;
struct pool {TYPE_1__ pf; } ;
typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_NOSPC ;
 int DMERR_LIMIT (char*) ;





 int get_pool_mode (struct pool*) ;

__attribute__((used)) static blk_status_t should_error_unserviceable_bio(struct pool *pool)
{
 enum pool_mode m = get_pool_mode(pool);

 switch (m) {
 case 128:

  DMERR_LIMIT("bio unserviceable, yet pool is in PM_WRITE mode");
  return BLK_STS_IOERR;

 case 131:
  return pool->pf.error_if_no_space ? BLK_STS_NOSPC : 0;

 case 130:
 case 129:
 case 132:
  return BLK_STS_IOERR;
 default:

  DMERR_LIMIT("bio unserviceable, yet pool has an unknown mode");
  return BLK_STS_IOERR;
 }
}
