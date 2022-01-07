
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_psb_private {int child_dev_num; struct child_device_config* child_dev; } ;
struct child_device_config {int device_type; } ;
struct bdb_header {int dummy; } ;
struct bdb_general_definitions {int child_dev_size; struct child_device_config* devices; } ;


 int BDB_GENERAL_DEFINITIONS ;
 int DRM_DEBUG_KMS (char*) ;
 int GFP_KERNEL ;
 struct bdb_general_definitions* find_section (struct bdb_header*,int ) ;
 int get_blocksize (struct bdb_general_definitions*) ;
 struct child_device_config* kcalloc (int,int,int ) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static void
parse_device_mapping(struct drm_psb_private *dev_priv,
         struct bdb_header *bdb)
{
 struct bdb_general_definitions *p_defs;
 struct child_device_config *p_child, *child_dev_ptr;
 int i, child_device_num, count;
 u16 block_size;

 p_defs = find_section(bdb, BDB_GENERAL_DEFINITIONS);
 if (!p_defs) {
  DRM_DEBUG_KMS("No general definition block is found, no devices defined.\n");
  return;
 }





 if (p_defs->child_dev_size != sizeof(*p_child)) {

  DRM_DEBUG_KMS("different child size is found. Invalid.\n");
  return;
 }

 block_size = get_blocksize(p_defs);

 child_device_num = (block_size - sizeof(*p_defs)) /
    sizeof(*p_child);
 count = 0;

 for (i = 0; i < child_device_num; i++) {
  p_child = &(p_defs->devices[i]);
  if (!p_child->device_type) {

   continue;
  }
  count++;
 }
 if (!count) {
  DRM_DEBUG_KMS("no child dev is parsed from VBT\n");
  return;
 }
 dev_priv->child_dev = kcalloc(count, sizeof(*p_child), GFP_KERNEL);
 if (!dev_priv->child_dev) {
  DRM_DEBUG_KMS("No memory space for child devices\n");
  return;
 }

 dev_priv->child_dev_num = count;
 count = 0;
 for (i = 0; i < child_device_num; i++) {
  p_child = &(p_defs->devices[i]);
  if (!p_child->device_type) {

   continue;
  }
  child_dev_ptr = dev_priv->child_dev + count;
  count++;
  memcpy((void *)child_dev_ptr, (void *)p_child,
     sizeof(*p_child));
 }
 return;
}
