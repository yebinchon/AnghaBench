
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dp_sdp_header {int HB2; int HB1; } ;


 int DP_SDP_PPS ;
 int DP_SDP_PPS_HEADER_PAYLOAD_BYTES_MINUS_1 ;
 int memset (struct dp_sdp_header*,int ,int) ;

void drm_dsc_dp_pps_header_init(struct dp_sdp_header *pps_header)
{
 memset(pps_header, 0, sizeof(*pps_header));

 pps_header->HB1 = DP_SDP_PPS;
 pps_header->HB2 = DP_SDP_PPS_HEADER_PAYLOAD_BYTES_MINUS_1;
}
