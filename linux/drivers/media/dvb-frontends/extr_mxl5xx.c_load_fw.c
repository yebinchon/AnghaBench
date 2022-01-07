
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl5xx_cfg {int fw_len; int fw_priv; int (* fw_read ) (int ,int *,int) ;int * fw; } ;
struct mxl {int dummy; } ;


 int ENOMEM ;
 int firmware_download (struct mxl*,int *,int) ;
 int stub1 (int ,int *,int) ;
 int vfree (int *) ;
 int * vmalloc (int) ;

__attribute__((used)) static int load_fw(struct mxl *state, struct mxl5xx_cfg *cfg)
{
 int stat = 0;
 u8 *buf;

 if (cfg->fw)
  return firmware_download(state, cfg->fw, cfg->fw_len);

 if (!cfg->fw_read)
  return -1;

 buf = vmalloc(0x40000);
 if (!buf)
  return -ENOMEM;

 cfg->fw_read(cfg->fw_priv, buf, 0x40000);
 stat = firmware_download(state, buf, 0x40000);
 vfree(buf);

 return stat;
}
