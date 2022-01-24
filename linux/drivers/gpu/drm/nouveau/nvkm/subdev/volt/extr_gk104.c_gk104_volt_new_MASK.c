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
typedef  int /*<<< orphan*/  u8 ;
struct nvkm_volt_func {int dummy; } ;
struct nvkm_volt {int /*<<< orphan*/  subdev; } ;
struct nvkm_device {int /*<<< orphan*/  gpio; int /*<<< orphan*/  bios; } ;
struct nvbios_volt {scalar_t__ type; } ;
struct gk104_volt {struct nvkm_volt base; struct nvbios_volt bios; } ;
struct dcb_gpio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_GPIO_VID_PWM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NVBIOS_VOLT_PWM ; 
 struct nvkm_volt_func const gk104_volt_gpio ; 
 struct nvkm_volt_func const gk104_volt_pwm ; 
 struct gk104_volt* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nvbios_volt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct dcb_gpio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_volt_func const*,struct nvkm_device*,int,struct nvkm_volt*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_volt*) ; 

int
FUNC7(struct nvkm_device *device, int index, struct nvkm_volt **pvolt)
{
	const struct nvkm_volt_func *volt_func = &gk104_volt_gpio;
	struct dcb_gpio_func gpio;
	struct nvbios_volt bios;
	struct gk104_volt *volt;
	u8 ver, hdr, cnt, len;
	const char *mode;

	if (!FUNC1(device->bios, &ver, &hdr, &cnt, &len, &bios))
		return 0;

	if (!FUNC4(device->gpio, 0, DCB_GPIO_VID_PWM, 0xff, &gpio) &&
	    bios.type == NVBIOS_VOLT_PWM) {
		volt_func = &gk104_volt_pwm;
	}

	if (!(volt = FUNC0(sizeof(*volt), GFP_KERNEL)))
		return -ENOMEM;
	FUNC5(volt_func, device, index, &volt->base);
	*pvolt = &volt->base;
	volt->bios = bios;

	/* now that we have a subdev, we can show an error if we found through
	 * the voltage table that we were supposed to use the PWN mode but we
	 * did not find the right GPIO for it.
	 */
	if (bios.type == NVBIOS_VOLT_PWM && volt_func != &gk104_volt_pwm) {
		FUNC3(&volt->base.subdev,
			   "Type mismatch between the voltage table type and "
			   "the GPIO table. Fallback to GPIO mode.\n");
	}

	if (volt_func == &gk104_volt_gpio) {
		FUNC6(&volt->base);
		mode = "GPIO";
	} else
		mode = "PWM";

	FUNC2(&volt->base.subdev, "Using %s mode\n", mode);

	return 0;
}