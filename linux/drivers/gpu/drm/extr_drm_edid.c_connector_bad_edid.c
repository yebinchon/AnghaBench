
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_connector {int name; TYPE_1__* dev; int bad_edid_counter; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_UT_KMS ;
 int DUMP_PREFIX_NONE ;
 int EDID_LENGTH ;
 int KERN_WARNING ;
 int dev_warn (int ,char*,int ) ;
 int drm_debug ;
 int drm_edid_block_valid (int *,int,int,int *) ;
 scalar_t__ drm_edid_is_zero (int *,int) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,int,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void connector_bad_edid(struct drm_connector *connector,
          u8 *edid, int num_blocks)
{
 int i;

 if (connector->bad_edid_counter++ && !(drm_debug & DRM_UT_KMS))
  return;

 dev_warn(connector->dev->dev,
   "%s: EDID is invalid:\n",
   connector->name);
 for (i = 0; i < num_blocks; i++) {
  u8 *block = edid + i * EDID_LENGTH;
  char prefix[20];

  if (drm_edid_is_zero(block, EDID_LENGTH))
   sprintf(prefix, "\t[%02x] ZERO ", i);
  else if (!drm_edid_block_valid(block, i, 0, ((void*)0)))
   sprintf(prefix, "\t[%02x] BAD  ", i);
  else
   sprintf(prefix, "\t[%02x] GOOD ", i);

  print_hex_dump(KERN_WARNING,
          prefix, DUMP_PREFIX_NONE, 16, 1,
          block, EDID_LENGTH, 0);
 }
}
