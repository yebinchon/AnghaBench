
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p9_sbe_occ {int sbe; } ;
struct occ_response {int return_status; } ;
struct occ {struct occ_response resp; } ;


 int EINVAL ;
 int EPROTO ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int fsi_occ_submit (int ,int *,int,struct occ_response*,size_t*) ;
 struct p9_sbe_occ* to_p9_sbe_occ (struct occ*) ;

__attribute__((used)) static int p9_sbe_occ_send_cmd(struct occ *occ, u8 *cmd)
{
 struct occ_response *resp = &occ->resp;
 struct p9_sbe_occ *ctx = to_p9_sbe_occ(occ);
 size_t resp_len = sizeof(*resp);
 int rc;

 rc = fsi_occ_submit(ctx->sbe, cmd, 8, resp, &resp_len);
 if (rc < 0)
  return rc;

 switch (resp->return_status) {
 case 137:
  rc = -ETIMEDOUT;
  break;
 case 128:
  rc = 0;
  break;
 case 138:
 case 136:
 case 130:
 case 139:
  rc = -EINVAL;
  break;
 case 129:
 case 140:
 case 135:
 case 133:
 case 131:
 case 132:
 case 134:
  rc = -EREMOTEIO;
  break;
 default:
  rc = -EPROTO;
 }

 return rc;
}
