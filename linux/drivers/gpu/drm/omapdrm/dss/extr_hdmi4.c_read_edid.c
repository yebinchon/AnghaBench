
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_hdmi {int lock; int core; } ;


 int BUG_ON (int) ;
 int hdmi4_read_edid (int *,int *,int) ;
 int hdmi_runtime_get (struct omap_hdmi*) ;
 int hdmi_runtime_put (struct omap_hdmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int read_edid(struct omap_hdmi *hdmi, u8 *buf, int len)
{
 int r;

 mutex_lock(&hdmi->lock);

 r = hdmi_runtime_get(hdmi);
 BUG_ON(r);

 r = hdmi4_read_edid(&hdmi->core, buf, len);

 hdmi_runtime_put(hdmi);
 mutex_unlock(&hdmi->lock);

 return r;
}
