
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_core_data {int dummy; } ;


 int EDID_LENGTH ;
 int EINVAL ;
 int hdmi_core_ddc_edid (struct hdmi_core_data*,int*,int) ;
 int hdmi_core_ddc_init (struct hdmi_core_data*) ;
 int hdmi_core_ddc_uninit (struct hdmi_core_data*) ;

int hdmi5_read_edid(struct hdmi_core_data *core, u8 *edid, int len)
{
 int r, n, i;
 int max_ext_blocks = (len / 128) - 1;

 if (len < 128)
  return -EINVAL;

 hdmi_core_ddc_init(core);

 r = hdmi_core_ddc_edid(core, edid, 0);
 if (r)
  goto out;

 n = edid[0x7e];

 if (n > max_ext_blocks)
  n = max_ext_blocks;

 for (i = 1; i <= n; i++) {
  r = hdmi_core_ddc_edid(core, edid + i * EDID_LENGTH, i);
  if (r)
   goto out;
 }

out:
 hdmi_core_ddc_uninit(core);

 return r ? r : len;
}
