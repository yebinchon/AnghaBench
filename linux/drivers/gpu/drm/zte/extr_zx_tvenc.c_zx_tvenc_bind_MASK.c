#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct zx_tvenc {int /*<<< orphan*/  mmio; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct zx_tvenc*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct zx_tvenc* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC7 (struct device*) ; 
 int FUNC8 (struct zx_tvenc*) ; 
 int FUNC9 (struct drm_device*,struct zx_tvenc*) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC7(dev);
	struct drm_device *drm = data;
	struct resource *res;
	struct zx_tvenc *tvenc;
	int ret;

	tvenc = FUNC5(dev, sizeof(*tvenc), GFP_KERNEL);
	if (!tvenc)
		return -ENOMEM;

	tvenc->dev = dev;
	FUNC3(dev, tvenc);

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	tvenc->mmio = FUNC4(dev, res);
	if (FUNC1(tvenc->mmio)) {
		ret = FUNC2(tvenc->mmio);
		FUNC0(dev, "failed to remap tvenc region: %d\n", ret);
		return ret;
	}

	ret = FUNC8(tvenc);
	if (ret) {
		FUNC0(dev, "failed to init power control: %d\n", ret);
		return ret;
	}

	ret = FUNC9(drm, tvenc);
	if (ret) {
		FUNC0(dev, "failed to register tvenc: %d\n", ret);
		return ret;
	}

	return 0;
}