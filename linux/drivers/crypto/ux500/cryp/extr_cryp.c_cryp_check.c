
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryp_device_data {TYPE_1__* base; } ;
struct TYPE_2__ {int pcellId3; int pcellId2; int pcellId1; int pcellId0; int periphId3; int periphId1; int periphId0; int periphId2; } ;


 int CRYP_PCELL_ID0 ;
 int CRYP_PCELL_ID1 ;
 int CRYP_PCELL_ID2 ;
 int CRYP_PCELL_ID3 ;
 int CRYP_PERIPHERAL_ID0 ;
 int CRYP_PERIPHERAL_ID1 ;
 int CRYP_PERIPHERAL_ID2_DB8500 ;
 int CRYP_PERIPHERAL_ID3 ;
 int EINVAL ;
 int EPERM ;
 int readl_relaxed (int *) ;

int cryp_check(struct cryp_device_data *device_data)
{
 int peripheralid2 = 0;

 if (((void*)0) == device_data)
  return -EINVAL;

 peripheralid2 = readl_relaxed(&device_data->base->periphId2);

 if (peripheralid2 != CRYP_PERIPHERAL_ID2_DB8500)
  return -EPERM;


 if ((CRYP_PERIPHERAL_ID0 ==
  readl_relaxed(&device_data->base->periphId0))
     && (CRYP_PERIPHERAL_ID1 ==
      readl_relaxed(&device_data->base->periphId1))
     && (CRYP_PERIPHERAL_ID3 ==
      readl_relaxed(&device_data->base->periphId3))
     && (CRYP_PCELL_ID0 ==
      readl_relaxed(&device_data->base->pcellId0))
     && (CRYP_PCELL_ID1 ==
      readl_relaxed(&device_data->base->pcellId1))
     && (CRYP_PCELL_ID2 ==
      readl_relaxed(&device_data->base->pcellId2))
     && (CRYP_PCELL_ID3 ==
      readl_relaxed(&device_data->base->pcellId3))) {
  return 0;
 }

 return -EPERM;
}
