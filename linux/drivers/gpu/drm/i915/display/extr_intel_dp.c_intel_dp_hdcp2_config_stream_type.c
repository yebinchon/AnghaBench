
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;
struct hdcp2_dp_errata_stream_type {int stream_type; int msg_id; } ;
typedef int stream_type_msg ;


 int HDCP_2_2_ERRATA_DP_STREAM_TYPE ;
 int intel_dp_hdcp2_write_msg (struct intel_digital_port*,struct hdcp2_dp_errata_stream_type*,int) ;

__attribute__((used)) static
int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
          bool is_repeater, u8 content_type)
{
 struct hdcp2_dp_errata_stream_type stream_type_msg;

 if (is_repeater)
  return 0;
 stream_type_msg.msg_id = HDCP_2_2_ERRATA_DP_STREAM_TYPE;
 stream_type_msg.stream_type = content_type;

 return intel_dp_hdcp2_write_msg(intel_dig_port, &stream_type_msg,
     sizeof(stream_type_msg));
}
