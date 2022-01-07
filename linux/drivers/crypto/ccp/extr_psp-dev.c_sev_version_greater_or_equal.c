
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ api_major; scalar_t__ api_minor; } ;


 TYPE_1__* psp_master ;

__attribute__((used)) static inline bool sev_version_greater_or_equal(u8 maj, u8 min)
{
 if (psp_master->api_major > maj)
  return 1;
 if (psp_master->api_major == maj && psp_master->api_minor >= min)
  return 1;
 return 0;
}
