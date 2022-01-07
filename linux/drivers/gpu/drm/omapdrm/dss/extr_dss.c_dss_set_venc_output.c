
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;
typedef enum omap_dss_venc_type { ____Placeholder_omap_dss_venc_type } omap_dss_venc_type ;


 int BUG () ;
 int DSS_CONTROL ;
 int OMAP_DSS_VENC_TYPE_COMPOSITE ;
 int OMAP_DSS_VENC_TYPE_SVIDEO ;
 int REG_FLD_MOD (struct dss_device*,int ,int,int,int) ;

void dss_set_venc_output(struct dss_device *dss, enum omap_dss_venc_type type)
{
 int l = 0;

 if (type == OMAP_DSS_VENC_TYPE_COMPOSITE)
  l = 0;
 else if (type == OMAP_DSS_VENC_TYPE_SVIDEO)
  l = 1;
 else
  BUG();


 REG_FLD_MOD(dss, DSS_CONTROL, l, 6, 6);
}
