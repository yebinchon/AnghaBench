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
struct sun4i_tcon {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sun4i_tcon*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun4i_tcon_handler ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
			       struct sun4i_tcon *tcon)
{
	struct platform_device *pdev = FUNC4(dev);
	int irq, ret;

	irq = FUNC3(pdev, 0);
	if (irq < 0) {
		FUNC0(dev, "Couldn't retrieve the TCON interrupt\n");
		return irq;
	}

	ret = FUNC2(dev, irq, sun4i_tcon_handler, 0,
			       FUNC1(dev), tcon);
	if (ret) {
		FUNC0(dev, "Couldn't request the IRQ\n");
		return ret;
	}

	return 0;
}