
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cryp_device_data {TYPE_1__* base; } ;
typedef enum cryp_dma_req_type { ____Placeholder_cryp_dma_req_type } cryp_dma_req_type ;
struct TYPE_2__ {int dmacr; } ;


 int CRYP_SET_BITS (int *,int ) ;

void cryp_configure_for_dma(struct cryp_device_data *device_data,
       enum cryp_dma_req_type dma_req)
{
 CRYP_SET_BITS(&device_data->base->dmacr,
        (u32) dma_req);
}
