
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int next; int dss; } ;


 int omapdss_device_connect (int ,struct omap_dss_device*,int ) ;

__attribute__((used)) static int venc_connect(struct omap_dss_device *src,
   struct omap_dss_device *dst)
{
 return omapdss_device_connect(dst->dss, dst, dst->next);
}
