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
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct bochs_device {int xres; int yres; int bpp; int stride; int yres_virtual; int fb_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int VBE_DISPI_ENABLED ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_BANK ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_BPP ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_ENABLE ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_VIRT_HEIGHT ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_VIRT_WIDTH ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_XRES ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_X_OFFSET ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_YRES ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_Y_OFFSET ; 
 int VBE_DISPI_LFB_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct bochs_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bochs_device*,int,int) ; 

void FUNC3(struct bochs_device *bochs,
		      struct drm_display_mode *mode)
{
	bochs->xres = mode->hdisplay;
	bochs->yres = mode->vdisplay;
	bochs->bpp = 32;
	bochs->stride = mode->hdisplay * (bochs->bpp / 8);
	bochs->yres_virtual = bochs->fb_size / bochs->stride;

	FUNC0("%dx%d @ %d bpp, vy %d\n",
			 bochs->xres, bochs->yres, bochs->bpp,
			 bochs->yres_virtual);

	FUNC2(bochs, 0x3c0, 0x20); /* unblank */

	FUNC1(bochs, VBE_DISPI_INDEX_ENABLE,      0);
	FUNC1(bochs, VBE_DISPI_INDEX_BPP,         bochs->bpp);
	FUNC1(bochs, VBE_DISPI_INDEX_XRES,        bochs->xres);
	FUNC1(bochs, VBE_DISPI_INDEX_YRES,        bochs->yres);
	FUNC1(bochs, VBE_DISPI_INDEX_BANK,        0);
	FUNC1(bochs, VBE_DISPI_INDEX_VIRT_WIDTH,  bochs->xres);
	FUNC1(bochs, VBE_DISPI_INDEX_VIRT_HEIGHT,
			  bochs->yres_virtual);
	FUNC1(bochs, VBE_DISPI_INDEX_X_OFFSET,    0);
	FUNC1(bochs, VBE_DISPI_INDEX_Y_OFFSET,    0);

	FUNC1(bochs, VBE_DISPI_INDEX_ENABLE,
			  VBE_DISPI_ENABLED | VBE_DISPI_LFB_ENABLED);
}