
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_packet {int payload_length; int payload; } ;
struct intel_dsi_host {int dummy; } ;


 int DRM_ERROR (char*) ;
 int MAX_PLOAD_CREDIT ;
 int add_payld_to_queue (struct intel_dsi_host*,int ,int) ;

__attribute__((used)) static int dsi_send_pkt_payld(struct intel_dsi_host *host,
         struct mipi_dsi_packet pkt)
{

 if (pkt.payload_length > MAX_PLOAD_CREDIT * 4) {
  DRM_ERROR("payload size exceeds max queue limit\n");
  return -1;
 }


 if (!add_payld_to_queue(host, pkt.payload,
    pkt.payload_length)) {
  DRM_ERROR("adding payload to queue failed\n");
  return -1;
 }

 return 0;
}
