
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int api_id; int api_name_len; int api_name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 scalar_t__ kstrtouint (char*,int,int *) ;
 TYPE_1__* pm_api_list ;
 int strncasecmp (char*,int ,int ) ;

__attribute__((used)) static int get_pm_api_id(char *pm_api_req, u32 *pm_id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(pm_api_list) ; i++) {
  if (!strncasecmp(pm_api_req, pm_api_list[i].api_name,
     pm_api_list[i].api_name_len)) {
   *pm_id = pm_api_list[i].api_id;
   break;
  }
 }


 if (i == ARRAY_SIZE(pm_api_list) && kstrtouint(pm_api_req, 10, pm_id))
  return -EINVAL;

 return 0;
}
