
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int base; } ;
struct omap_hdmi {int lock; TYPE_1__ wp; int core; } ;


 int BUG_ON (int) ;
 int HDMI_WP_SYSCONFIG ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 int REG_GET (int ,int ,int,int) ;
 int hdmi5_read_edid (int *,int *,int) ;
 int hdmi_runtime_get (struct omap_hdmi*) ;
 int hdmi_runtime_put (struct omap_hdmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int read_edid(struct omap_hdmi *hdmi, u8 *buf, int len)
{
 int r;
 int idlemode;

 mutex_lock(&hdmi->lock);

 r = hdmi_runtime_get(hdmi);
 BUG_ON(r);

 idlemode = REG_GET(hdmi->wp.base, HDMI_WP_SYSCONFIG, 3, 2);

 REG_FLD_MOD(hdmi->wp.base, HDMI_WP_SYSCONFIG, 1, 3, 2);

 r = hdmi5_read_edid(&hdmi->core, buf, len);

 REG_FLD_MOD(hdmi->wp.base, HDMI_WP_SYSCONFIG, idlemode, 3, 2);

 hdmi_runtime_put(hdmi);
 mutex_unlock(&hdmi->lock);

 return r;
}
