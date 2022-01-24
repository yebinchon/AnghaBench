#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct uc_css_header {int header_size_dw; size_t key_size_dw; int modulus_size_dw; int exponent_size_dw; int size_dw; int /*<<< orphan*/  sw_version; } ;
struct intel_uc_fw {int type; int ucode_size; int rsa_size; scalar_t__ major_ver_found; scalar_t__ minor_ver_found; scalar_t__ major_ver_wanted; scalar_t__ minor_ver_wanted; size_t size; int /*<<< orphan*/  path; struct drm_i915_gem_object* obj; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_4__ {size_t size; } ;
struct TYPE_3__ {struct device* dev; } ;
struct drm_i915_private {TYPE_2__ wopcm; TYPE_1__ drm; } ;
struct drm_i915_gem_object {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSS_SW_VERSION_GUC_MAJOR ; 
 int /*<<< orphan*/  CSS_SW_VERSION_GUC_MINOR ; 
 int /*<<< orphan*/  CSS_SW_VERSION_HUC_MAJOR ; 
 int /*<<< orphan*/  CSS_SW_VERSION_HUC_MINOR ; 
 int E2BIG ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENODATA ; 
 int ENOENT ; 
 int ENOEXEC ; 
 int /*<<< orphan*/  ENXIO ; 
 int EPROTO ; 
 int /*<<< orphan*/  ESTALE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_AVAILABLE ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_ERROR ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_MISSING ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_URL ; 
#define  INTEL_UC_FW_TYPE_GUC 129 
#define  INTEL_UC_FW_TYPE_HUC 128 
 scalar_t__ FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct drm_i915_gem_object*) ; 
 size_t UOS_RSA_SCRATCH_COUNT ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uc_fw*,struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct intel_uc_fw*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 
 struct drm_i915_gem_object* FUNC10 (struct drm_i915_private*,scalar_t__,size_t) ; 
 int FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_uc_fw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_uc_fw*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_uc_fw*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct firmware const*) ; 
 int FUNC17 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct intel_uc_fw *uc_fw, struct drm_i915_private *i915)
{
	struct device *dev = i915->drm.dev;
	struct drm_i915_gem_object *obj;
	const struct firmware *fw = NULL;
	struct uc_css_header *css;
	size_t size;
	int err;

	FUNC1(!i915->wopcm.size);
	FUNC1(!FUNC13(uc_fw));

	err = FUNC11(i915, -ENXIO);
	if (err)
		return err;

	FUNC5(uc_fw, i915, -EINVAL);
	FUNC5(uc_fw, i915, -ESTALE);

	err = FUNC17(&fw, uc_fw->path, dev);
	if (err)
		goto fail;

	/* Check the size of the blob before examining buffer contents */
	if (FUNC18(fw->size < sizeof(struct uc_css_header))) {
		FUNC9(dev, "%s firmware %s: invalid size: %zu < %zu\n",
			 FUNC15(uc_fw->type), uc_fw->path,
			 fw->size, sizeof(struct uc_css_header));
		err = -ENODATA;
		goto fail;
	}

	css = (struct uc_css_header *)fw->data;

	/* Check integrity of size values inside CSS header */
	size = (css->header_size_dw - css->key_size_dw - css->modulus_size_dw -
		css->exponent_size_dw) * sizeof(u32);
	if (FUNC18(size != sizeof(struct uc_css_header))) {
		FUNC9(dev,
			 "%s firmware %s: unexpected header size: %zu != %zu\n",
			 FUNC15(uc_fw->type), uc_fw->path,
			 fw->size, sizeof(struct uc_css_header));
		err = -EPROTO;
		goto fail;
	}

	/* uCode size must calculated from other sizes */
	uc_fw->ucode_size = (css->size_dw - css->header_size_dw) * sizeof(u32);

	/* now RSA */
	if (FUNC18(css->key_size_dw != UOS_RSA_SCRATCH_COUNT)) {
		FUNC9(dev, "%s firmware %s: unexpected key size: %u != %u\n",
			 FUNC15(uc_fw->type), uc_fw->path,
			 css->key_size_dw, UOS_RSA_SCRATCH_COUNT);
		err = -EPROTO;
		goto fail;
	}
	uc_fw->rsa_size = css->key_size_dw * sizeof(u32);

	/* At least, it should have header, uCode and RSA. Size of all three. */
	size = sizeof(struct uc_css_header) + uc_fw->ucode_size + uc_fw->rsa_size;
	if (FUNC18(fw->size < size)) {
		FUNC9(dev, "%s firmware %s: invalid size: %zu < %zu\n",
			 FUNC15(uc_fw->type), uc_fw->path,
			 fw->size, size);
		err = -ENOEXEC;
		goto fail;
	}

	/* Sanity check whether this fw is not larger than whole WOPCM memory */
	size = FUNC6(uc_fw);
	if (FUNC18(size >= i915->wopcm.size)) {
		FUNC9(dev, "%s firmware %s: invalid size: %zu > %zu\n",
			 FUNC15(uc_fw->type), uc_fw->path,
			 size, (size_t)i915->wopcm.size);
		err = -E2BIG;
		goto fail;
	}

	/* Get version numbers from the CSS header */
	switch (uc_fw->type) {
	case INTEL_UC_FW_TYPE_GUC:
		uc_fw->major_ver_found = FUNC0(CSS_SW_VERSION_GUC_MAJOR,
						   css->sw_version);
		uc_fw->minor_ver_found = FUNC0(CSS_SW_VERSION_GUC_MINOR,
						   css->sw_version);
		break;

	case INTEL_UC_FW_TYPE_HUC:
		uc_fw->major_ver_found = FUNC0(CSS_SW_VERSION_HUC_MAJOR,
						   css->sw_version);
		uc_fw->minor_ver_found = FUNC0(CSS_SW_VERSION_HUC_MINOR,
						   css->sw_version);
		break;

	default:
		FUNC3(uc_fw->type);
		break;
	}

	if (uc_fw->major_ver_found != uc_fw->major_ver_wanted ||
	    uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
		FUNC8(dev, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
			   FUNC15(uc_fw->type), uc_fw->path,
			   uc_fw->major_ver_found, uc_fw->minor_ver_found,
			   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted);
		if (!FUNC14(uc_fw)) {
			err = -ENOEXEC;
			goto fail;
		}
	}

	obj = FUNC10(i915, fw->data, fw->size);
	if (FUNC2(obj)) {
		err = FUNC4(obj);
		goto fail;
	}

	uc_fw->obj = obj;
	uc_fw->size = fw->size;
	FUNC12(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);

	FUNC16(fw);
	return 0;

fail:
	FUNC12(uc_fw, err == -ENOENT ?
				  INTEL_UC_FIRMWARE_MISSING :
				  INTEL_UC_FIRMWARE_ERROR);

	FUNC8(dev, "%s firmware %s: fetch failed with error %d\n",
		   FUNC15(uc_fw->type), uc_fw->path, err);
	FUNC7(dev, "%s firmware(s) can be downloaded from %s\n",
		 FUNC15(uc_fw->type), INTEL_UC_FIRMWARE_URL);

	FUNC16(fw);		/* OK even if fw is NULL */
	return err;
}