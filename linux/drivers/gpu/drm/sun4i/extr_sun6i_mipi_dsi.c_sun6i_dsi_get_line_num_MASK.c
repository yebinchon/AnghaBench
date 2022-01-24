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
typedef  unsigned int u16 ;
struct sun6i_dsi {struct mipi_dsi_device* device; } ;
struct mipi_dsi_device {unsigned int lanes; int /*<<< orphan*/  format; } ;
struct drm_display_mode {unsigned int htotal; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC1(struct sun6i_dsi *dsi,
				  struct drm_display_mode *mode)
{
	struct mipi_dsi_device *device = dsi->device;
	unsigned int Bpp = FUNC0(device->format) / 8;

	return mode->htotal * Bpp / device->lanes;
}