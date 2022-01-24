#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct msm_gpu {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_5__ {scalar_t__ fwloc; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_QCOM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FW_LOCATION_LEGACY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct firmware const*) ; 
 int /*<<< orphan*/  MEMREMAP_WC ; 
 int FUNC3 (struct firmware const*) ; 
 struct firmware* FUNC4 (TYPE_2__*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct device_node* FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct firmware const*) ; 
 int FUNC14 (struct device*,struct firmware const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct firmware const*) ; 
 int FUNC17 (struct resource*) ; 
 TYPE_2__* FUNC18 (struct msm_gpu*) ; 
 int zap_available ; 

__attribute__((used)) static int FUNC19(struct msm_gpu *gpu, const char *fwname,
		u32 pasid)
{
	struct device *dev = &gpu->pdev->dev;
	const struct firmware *fw;
	struct device_node *np, *mem_np;
	struct resource r;
	phys_addr_t mem_phys;
	ssize_t mem_size;
	void *mem_region = NULL;
	int ret;

	if (!FUNC1(CONFIG_ARCH_QCOM)) {
		zap_available = false;
		return -EINVAL;
	}

	np = FUNC10(dev->of_node, "zap-shader");
	if (!np) {
		zap_available = false;
		return -ENODEV;
	}

	mem_np = FUNC12(np, "memory-region", 0);
	FUNC11(np);
	if (!mem_np) {
		zap_available = false;
		return -EINVAL;
	}

	ret = FUNC9(mem_np, 0, &r);
	FUNC11(mem_np);
	if (ret)
		return ret;

	mem_phys = r.start;

	/* Request the MDT file for the firmware */
	fw = FUNC4(FUNC18(gpu), fwname);
	if (FUNC2(fw)) {
		FUNC0(dev, "Unable to load %s\n", fwname);
		return FUNC3(fw);
	}

	/* Figure out how much memory we need */
	mem_size = FUNC13(fw);
	if (mem_size < 0) {
		ret = mem_size;
		goto out;
	}

	if (mem_size > FUNC17(&r)) {
		FUNC0(dev,
			"memory region is too small to load the MDT\n");
		ret = -E2BIG;
		goto out;
	}

	/* Allocate memory for the firmware image */
	mem_region = FUNC7(mem_phys, mem_size,  MEMREMAP_WC);
	if (!mem_region) {
		ret = -ENOMEM;
		goto out;
	}

	/*
	 * Load the rest of the MDT
	 *
	 * Note that we could be dealing with two different paths, since
	 * with upstream linux-firmware it would be in a qcom/ subdir..
	 * adreno_request_fw() handles this, but qcom_mdt_load() does
	 * not.  But since we've already gotten through adreno_request_fw()
	 * we know which of the two cases it is:
	 */
	if (FUNC18(gpu)->fwloc == FW_LOCATION_LEGACY) {
		ret = FUNC14(dev, fw, fwname, pasid,
				mem_region, mem_phys, mem_size, NULL);
	} else {
		char *newname;

		newname = FUNC5(GFP_KERNEL, "qcom/%s", fwname);

		ret = FUNC14(dev, fw, newname, pasid,
				mem_region, mem_phys, mem_size, NULL);
		FUNC6(newname);
	}
	if (ret)
		goto out;

	/* Send the image to the secure world */
	ret = FUNC15(pasid);

	/*
	 * If the scm call returns -EOPNOTSUPP we assume that this target
	 * doesn't need/support the zap shader so quietly fail
	 */
	if (ret == -EOPNOTSUPP)
		zap_available = false;
	else if (ret)
		FUNC0(dev, "Unable to authorize the image\n");

out:
	if (mem_region)
		FUNC8(mem_region);

	FUNC16(fw);

	return ret;
}