
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int dummy; } ;
struct drm_connector {int null_edid_counter; int edid_corrupt; } ;


 int EDID_LENGTH ;
 int GFP_KERNEL ;
 int connector_bad_edid (struct drm_connector*,int*,int) ;
 scalar_t__ drm_edid_block_valid (int*,int,int,int *) ;
 scalar_t__ drm_edid_is_zero (int*,int) ;
 struct edid* drm_get_override_edid (struct drm_connector*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int* kmalloc_array (int,int,int ) ;
 int* krealloc (int*,int,int ) ;
 int memcpy (int*,int*,int) ;

struct edid *drm_do_get_edid(struct drm_connector *connector,
 int (*get_edid_block)(void *data, u8 *buf, unsigned int block,
         size_t len),
 void *data)
{
 int i, j = 0, valid_extensions = 0;
 u8 *edid, *new;
 struct edid *override;

 override = drm_get_override_edid(connector);
 if (override)
  return override;

 if ((edid = kmalloc(EDID_LENGTH, GFP_KERNEL)) == ((void*)0))
  return ((void*)0);


 for (i = 0; i < 4; i++) {
  if (get_edid_block(data, edid, 0, EDID_LENGTH))
   goto out;
  if (drm_edid_block_valid(edid, 0, 0,
      &connector->edid_corrupt))
   break;
  if (i == 0 && drm_edid_is_zero(edid, EDID_LENGTH)) {
   connector->null_edid_counter++;
   goto carp;
  }
 }
 if (i == 4)
  goto carp;


 valid_extensions = edid[0x7e];
 if (valid_extensions == 0)
  return (struct edid *)edid;

 new = krealloc(edid, (valid_extensions + 1) * EDID_LENGTH, GFP_KERNEL);
 if (!new)
  goto out;
 edid = new;

 for (j = 1; j <= edid[0x7e]; j++) {
  u8 *block = edid + j * EDID_LENGTH;

  for (i = 0; i < 4; i++) {
   if (get_edid_block(data, block, j, EDID_LENGTH))
    goto out;
   if (drm_edid_block_valid(block, j, 0, ((void*)0)))
    break;
  }

  if (i == 4)
   valid_extensions--;
 }

 if (valid_extensions != edid[0x7e]) {
  u8 *base;

  connector_bad_edid(connector, edid, edid[0x7e] + 1);

  edid[EDID_LENGTH-1] += edid[0x7e] - valid_extensions;
  edid[0x7e] = valid_extensions;

  new = kmalloc_array(valid_extensions + 1, EDID_LENGTH,
        GFP_KERNEL);
  if (!new)
   goto out;

  base = new;
  for (i = 0; i <= edid[0x7e]; i++) {
   u8 *block = edid + i * EDID_LENGTH;

   if (!drm_edid_block_valid(block, i, 0, ((void*)0)))
    continue;

   memcpy(base, block, EDID_LENGTH);
   base += EDID_LENGTH;
  }

  kfree(edid);
  edid = new;
 }

 return (struct edid *)edid;

carp:
 connector_bad_edid(connector, edid, 1);
out:
 kfree(edid);
 return ((void*)0);
}
