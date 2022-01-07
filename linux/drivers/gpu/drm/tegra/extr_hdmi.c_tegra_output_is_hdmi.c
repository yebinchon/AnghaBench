
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* edid_blob_ptr; } ;
struct tegra_output {TYPE_2__ connector; } ;
struct edid {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int drm_detect_hdmi_monitor (struct edid*) ;

__attribute__((used)) static bool tegra_output_is_hdmi(struct tegra_output *output)
{
 struct edid *edid;

 if (!output->connector.edid_blob_ptr)
  return 0;

 edid = (struct edid *)output->connector.edid_blob_ptr->data;

 return drm_detect_hdmi_monitor(edid);
}
