#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zx_vga {int connected; scalar_t__ mmio; TYPE_1__* ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 scalar_t__ VGA_AUTO_DETECT_SEL ; 
 int /*<<< orphan*/  VGA_DETECT_SEL_HAS_DEVICE ; 
 int /*<<< orphan*/  VGA_DETECT_SEL_NO_DEVICE ; 
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 struct zx_vga* FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *connector)
{
	struct zx_vga *vga = FUNC4(connector);
	struct edid *edid;
	int ret;

	/*
	 * Clear both detection bits to switch I2C bus from device
	 * detecting to EDID reading.
	 */
	FUNC5(vga->mmio + VGA_AUTO_DETECT_SEL, 0);

	edid = FUNC2(connector, &vga->ddc->adap);
	if (!edid) {
		/*
		 * If EDID reading fails, we set the device state into
		 * disconnected.  Locking is not required here, since the
		 * VGA_AUTO_DETECT_SEL register write in irq handler cannot
		 * be triggered when both detection bits are cleared as above.
		 */
		FUNC5(vga->mmio + VGA_AUTO_DETECT_SEL,
			  VGA_DETECT_SEL_NO_DEVICE);
		vga->connected = false;
		return 0;
	}

	/*
	 * As edid reading succeeds, device must be connected, so we set
	 * up detection bit for unplug interrupt here.
	 */
	FUNC5(vga->mmio + VGA_AUTO_DETECT_SEL, VGA_DETECT_SEL_HAS_DEVICE);

	FUNC1(connector, edid);
	ret = FUNC0(connector, edid);
	FUNC3(edid);

	return ret;
}