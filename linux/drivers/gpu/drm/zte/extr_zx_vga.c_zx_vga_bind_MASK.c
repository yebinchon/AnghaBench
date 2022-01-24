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
struct zx_vga {int /*<<< orphan*/  i2c_wclk; int /*<<< orphan*/  complete; int /*<<< orphan*/  mmio; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct zx_vga*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct zx_vga* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zx_vga*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC13 (struct device*) ; 
 int FUNC14 (struct zx_vga*) ; 
 int /*<<< orphan*/  FUNC15 (struct zx_vga*) ; 
 int /*<<< orphan*/  zx_vga_irq_handler ; 
 int /*<<< orphan*/  zx_vga_irq_thread ; 
 int FUNC16 (struct zx_vga*) ; 
 int FUNC17 (struct drm_device*,struct zx_vga*) ; 

__attribute__((used)) static int FUNC18(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC13(dev);
	struct drm_device *drm = data;
	struct resource *res;
	struct zx_vga *vga;
	int irq;
	int ret;

	vga = FUNC8(dev, sizeof(*vga), GFP_KERNEL);
	if (!vga)
		return -ENOMEM;

	vga->dev = dev;
	FUNC5(dev, vga);

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	vga->mmio = FUNC7(dev, res);
	if (FUNC1(vga->mmio))
		return FUNC2(vga->mmio);

	irq = FUNC11(pdev, 0);
	if (irq < 0)
		return irq;

	vga->i2c_wclk = FUNC6(dev, "i2c_wclk");
	if (FUNC1(vga->i2c_wclk)) {
		ret = FUNC2(vga->i2c_wclk);
		FUNC0(dev, "failed to get i2c_wclk: %d\n", ret);
		return ret;
	}

	ret = FUNC16(vga);
	if (ret) {
		FUNC0(dev, "failed to init power control: %d\n", ret);
		return ret;
	}

	ret = FUNC14(vga);
	if (ret) {
		FUNC0(dev, "failed to register ddc: %d\n", ret);
		return ret;
	}

	ret = FUNC17(drm, vga);
	if (ret) {
		FUNC0(dev, "failed to register vga: %d\n", ret);
		return ret;
	}

	FUNC10(&vga->complete);

	ret = FUNC9(dev, irq, zx_vga_irq_handler,
					zx_vga_irq_thread, IRQF_SHARED,
					FUNC4(dev), vga);
	if (ret) {
		FUNC0(dev, "failed to request threaded irq: %d\n", ret);
		return ret;
	}

	ret = FUNC3(vga->i2c_wclk);
	if (ret)
		return ret;

	FUNC15(vga);

	return 0;
}