
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int write_buffer ;
typedef int uint8_t ;
typedef int uint32_t ;
struct ddc_service {int dummy; } ;
typedef int sink_version ;
typedef int offset ;


 int HDMI_SCDC_ADDRESS ;
 int HDMI_SCDC_SINK_VERSION ;
 int HDMI_SCDC_SOURCE_VERSION ;
 int HDMI_SCDC_TMDS_CONFIG ;
 int dal_ddc_service_query_ddc_data (struct ddc_service*,int,int*,int,int*,int) ;

void dal_ddc_service_write_scdc_data(struct ddc_service *ddc_service,
  uint32_t pix_clk,
  bool lte_340_scramble)
{
 bool over_340_mhz = pix_clk > 340000 ? 1 : 0;
 uint8_t slave_address = HDMI_SCDC_ADDRESS;
 uint8_t offset = HDMI_SCDC_SINK_VERSION;
 uint8_t sink_version = 0;
 uint8_t write_buffer[2] = {0};


 dal_ddc_service_query_ddc_data(ddc_service, slave_address, &offset,
   sizeof(offset), &sink_version, sizeof(sink_version));
 if (sink_version == 1) {

  write_buffer[0] = HDMI_SCDC_SOURCE_VERSION;
  write_buffer[1] = 1;
  dal_ddc_service_query_ddc_data(ddc_service, slave_address,
    write_buffer, sizeof(write_buffer), ((void*)0), 0);

 }
 write_buffer[0] = HDMI_SCDC_TMDS_CONFIG;

 if (over_340_mhz) {
  write_buffer[1] = 3;
 } else if (lte_340_scramble) {
  write_buffer[1] = 1;
 } else {
  write_buffer[1] = 0;
 }
 dal_ddc_service_query_ddc_data(ddc_service, slave_address, write_buffer,
   sizeof(write_buffer), ((void*)0), 0);
}
