
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dm_queue_mode { ____Placeholder_dm_queue_mode } dm_queue_mode ;


 int DM_TYPE_REQUEST_BASED ;

__attribute__((used)) static bool __table_type_request_based(enum dm_queue_mode table_type)
{
 return table_type == DM_TYPE_REQUEST_BASED;
}
