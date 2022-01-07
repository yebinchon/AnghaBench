
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ishtp_hbm_cl_cmd {int fw_addr; int host_addr; int hbm_cmd; } ;
struct ishtp_cl {int fw_client_id; int host_client_id; } ;


 int memset (struct ishtp_hbm_cl_cmd*,int ,size_t) ;

__attribute__((used)) static inline void ishtp_hbm_cl_hdr(struct ishtp_cl *cl, uint8_t hbm_cmd,
 void *buf, size_t len)
{
 struct ishtp_hbm_cl_cmd *cmd = buf;

 memset(cmd, 0, len);

 cmd->hbm_cmd = hbm_cmd;
 cmd->host_addr = cl->host_client_id;
 cmd->fw_addr = cl->fw_client_id;
}
