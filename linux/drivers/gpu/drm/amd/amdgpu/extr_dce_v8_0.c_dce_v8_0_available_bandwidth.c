
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dce8_wm_params {int dummy; } ;


 int dce_v8_0_data_return_bandwidth (struct dce8_wm_params*) ;
 int dce_v8_0_dmif_request_bandwidth (struct dce8_wm_params*) ;
 int dce_v8_0_dram_bandwidth (struct dce8_wm_params*) ;
 int min (int ,int ) ;

__attribute__((used)) static u32 dce_v8_0_available_bandwidth(struct dce8_wm_params *wm)
{

 u32 dram_bandwidth = dce_v8_0_dram_bandwidth(wm);
 u32 data_return_bandwidth = dce_v8_0_data_return_bandwidth(wm);
 u32 dmif_req_bandwidth = dce_v8_0_dmif_request_bandwidth(wm);

 return min(dram_bandwidth, min(data_return_bandwidth, dmif_req_bandwidth));
}
