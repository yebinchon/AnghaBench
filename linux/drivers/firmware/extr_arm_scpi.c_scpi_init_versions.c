
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scpi_drvinfo {void* firmware_version; void* protocol_version; } ;
struct scp_capabilities {int platform_version; int protocol_version; } ;
typedef int caps ;
struct TYPE_2__ {scalar_t__ is_legacy; } ;


 int CMD_SCPI_CAPABILITIES ;
 int EOPNOTSUPP ;
 void* le32_to_cpu (int ) ;
 TYPE_1__* scpi_info ;
 int scpi_send_message (int ,int *,int ,struct scp_capabilities*,int) ;

__attribute__((used)) static int scpi_init_versions(struct scpi_drvinfo *info)
{
 int ret;
 struct scp_capabilities caps;

 ret = scpi_send_message(CMD_SCPI_CAPABILITIES, ((void*)0), 0,
    &caps, sizeof(caps));
 if (!ret) {
  info->protocol_version = le32_to_cpu(caps.protocol_version);
  info->firmware_version = le32_to_cpu(caps.platform_version);
 }

 if (scpi_info->is_legacy && ret == -EOPNOTSUPP)
  return 0;

 return ret;
}
