
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct uc_css_header {int header_size_dw; size_t key_size_dw; int modulus_size_dw; int exponent_size_dw; int size_dw; int sw_version; } ;
struct intel_uc_fw {int type; int ucode_size; int rsa_size; scalar_t__ major_ver_found; scalar_t__ minor_ver_found; scalar_t__ major_ver_wanted; scalar_t__ minor_ver_wanted; size_t size; int path; struct drm_i915_gem_object* obj; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_4__ {size_t size; } ;
struct TYPE_3__ {struct device* dev; } ;
struct drm_i915_private {TYPE_2__ wopcm; TYPE_1__ drm; } ;
struct drm_i915_gem_object {int dummy; } ;
struct device {int dummy; } ;


 int CSS_SW_VERSION_GUC_MAJOR ;
 int CSS_SW_VERSION_GUC_MINOR ;
 int CSS_SW_VERSION_HUC_MAJOR ;
 int CSS_SW_VERSION_HUC_MINOR ;
 int E2BIG ;
 int EINVAL ;
 int ENODATA ;
 int ENOENT ;
 int ENOEXEC ;
 int ENXIO ;
 int EPROTO ;
 int ESTALE ;
 void* FIELD_GET (int ,int ) ;
 int GEM_BUG_ON (int) ;
 int INTEL_UC_FIRMWARE_AVAILABLE ;
 int INTEL_UC_FIRMWARE_ERROR ;
 int INTEL_UC_FIRMWARE_MISSING ;
 int INTEL_UC_FIRMWARE_URL ;


 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 int MISSING_CASE (int) ;
 int PTR_ERR (struct drm_i915_gem_object*) ;
 size_t UOS_RSA_SCRATCH_COUNT ;
 int __force_fw_fetch_failures (struct intel_uc_fw*,struct drm_i915_private*,int ) ;
 size_t __intel_uc_fw_get_upload_size (struct intel_uc_fw*) ;
 int dev_info (struct device*,char*,int ,int ) ;
 int dev_notice (struct device*,char*,int ,int ,int,...) ;
 int dev_warn (struct device*,char*,int ,int ,size_t,size_t) ;
 struct drm_i915_gem_object* i915_gem_object_create_shmem_from_data (struct drm_i915_private*,scalar_t__,size_t) ;
 int i915_inject_load_error (struct drm_i915_private*,int ) ;
 int intel_uc_fw_change_status (struct intel_uc_fw*,int ) ;
 int intel_uc_fw_is_enabled (struct intel_uc_fw*) ;
 int intel_uc_fw_is_overridden (struct intel_uc_fw*) ;
 int intel_uc_fw_type_repr (int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;
 scalar_t__ unlikely (int) ;

int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw, struct drm_i915_private *i915)
{
 struct device *dev = i915->drm.dev;
 struct drm_i915_gem_object *obj;
 const struct firmware *fw = ((void*)0);
 struct uc_css_header *css;
 size_t size;
 int err;

 GEM_BUG_ON(!i915->wopcm.size);
 GEM_BUG_ON(!intel_uc_fw_is_enabled(uc_fw));

 err = i915_inject_load_error(i915, -ENXIO);
 if (err)
  return err;

 __force_fw_fetch_failures(uc_fw, i915, -EINVAL);
 __force_fw_fetch_failures(uc_fw, i915, -ESTALE);

 err = request_firmware(&fw, uc_fw->path, dev);
 if (err)
  goto fail;


 if (unlikely(fw->size < sizeof(struct uc_css_header))) {
  dev_warn(dev, "%s firmware %s: invalid size: %zu < %zu\n",
    intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
    fw->size, sizeof(struct uc_css_header));
  err = -ENODATA;
  goto fail;
 }

 css = (struct uc_css_header *)fw->data;


 size = (css->header_size_dw - css->key_size_dw - css->modulus_size_dw -
  css->exponent_size_dw) * sizeof(u32);
 if (unlikely(size != sizeof(struct uc_css_header))) {
  dev_warn(dev,
    "%s firmware %s: unexpected header size: %zu != %zu\n",
    intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
    fw->size, sizeof(struct uc_css_header));
  err = -EPROTO;
  goto fail;
 }


 uc_fw->ucode_size = (css->size_dw - css->header_size_dw) * sizeof(u32);


 if (unlikely(css->key_size_dw != UOS_RSA_SCRATCH_COUNT)) {
  dev_warn(dev, "%s firmware %s: unexpected key size: %u != %u\n",
    intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
    css->key_size_dw, UOS_RSA_SCRATCH_COUNT);
  err = -EPROTO;
  goto fail;
 }
 uc_fw->rsa_size = css->key_size_dw * sizeof(u32);


 size = sizeof(struct uc_css_header) + uc_fw->ucode_size + uc_fw->rsa_size;
 if (unlikely(fw->size < size)) {
  dev_warn(dev, "%s firmware %s: invalid size: %zu < %zu\n",
    intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
    fw->size, size);
  err = -ENOEXEC;
  goto fail;
 }


 size = __intel_uc_fw_get_upload_size(uc_fw);
 if (unlikely(size >= i915->wopcm.size)) {
  dev_warn(dev, "%s firmware %s: invalid size: %zu > %zu\n",
    intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
    size, (size_t)i915->wopcm.size);
  err = -E2BIG;
  goto fail;
 }


 switch (uc_fw->type) {
 case 129:
  uc_fw->major_ver_found = FIELD_GET(CSS_SW_VERSION_GUC_MAJOR,
         css->sw_version);
  uc_fw->minor_ver_found = FIELD_GET(CSS_SW_VERSION_GUC_MINOR,
         css->sw_version);
  break;

 case 128:
  uc_fw->major_ver_found = FIELD_GET(CSS_SW_VERSION_HUC_MAJOR,
         css->sw_version);
  uc_fw->minor_ver_found = FIELD_GET(CSS_SW_VERSION_HUC_MINOR,
         css->sw_version);
  break;

 default:
  MISSING_CASE(uc_fw->type);
  break;
 }

 if (uc_fw->major_ver_found != uc_fw->major_ver_wanted ||
     uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
  dev_notice(dev, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
      intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
      uc_fw->major_ver_found, uc_fw->minor_ver_found,
      uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted);
  if (!intel_uc_fw_is_overridden(uc_fw)) {
   err = -ENOEXEC;
   goto fail;
  }
 }

 obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
 if (IS_ERR(obj)) {
  err = PTR_ERR(obj);
  goto fail;
 }

 uc_fw->obj = obj;
 uc_fw->size = fw->size;
 intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);

 release_firmware(fw);
 return 0;

fail:
 intel_uc_fw_change_status(uc_fw, err == -ENOENT ?
      INTEL_UC_FIRMWARE_MISSING :
      INTEL_UC_FIRMWARE_ERROR);

 dev_notice(dev, "%s firmware %s: fetch failed with error %d\n",
     intel_uc_fw_type_repr(uc_fw->type), uc_fw->path, err);
 dev_info(dev, "%s firmware(s) can be downloaded from %s\n",
   intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);

 release_firmware(fw);
 return err;
}
