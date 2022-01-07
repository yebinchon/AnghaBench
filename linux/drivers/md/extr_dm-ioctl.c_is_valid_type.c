
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dm_queue_mode { ____Placeholder_dm_queue_mode } dm_queue_mode ;


 int DM_TYPE_BIO_BASED ;
 int DM_TYPE_DAX_BIO_BASED ;

__attribute__((used)) static bool is_valid_type(enum dm_queue_mode cur, enum dm_queue_mode new)
{
 if (cur == new ||
     (cur == DM_TYPE_BIO_BASED && new == DM_TYPE_DAX_BIO_BASED))
  return 1;

 return 0;
}
