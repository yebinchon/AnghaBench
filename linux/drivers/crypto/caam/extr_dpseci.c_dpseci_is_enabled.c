
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpseci_rsp_is_enabled {int is_enabled; } ;


 int DPSECI_CMDID_IS_ENABLED ;
 int ENABLE ;
 int dpseci_get_field (int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpseci_is_enabled(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
        int *en)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpseci_rsp_is_enabled *rsp_params;
 int err;

 cmd.header = mc_encode_cmd_header(DPSECI_CMDID_IS_ENABLED,
       cmd_flags,
       token);
 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;

 rsp_params = (struct dpseci_rsp_is_enabled *)cmd.params;
 *en = dpseci_get_field(rsp_params->is_enabled, ENABLE);

 return 0;
}
