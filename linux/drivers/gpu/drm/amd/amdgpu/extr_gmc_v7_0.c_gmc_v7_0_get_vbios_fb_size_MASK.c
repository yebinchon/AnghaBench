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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned int real_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  D1VGA_CONTROL ; 
 int /*<<< orphan*/  D1VGA_MODE_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIEWPORT_HEIGHT ; 
 int /*<<< orphan*/  VIEWPORT_SIZE ; 
 int /*<<< orphan*/  VIEWPORT_WIDTH ; 
 int /*<<< orphan*/  mmD1VGA_CONTROL ; 
 int /*<<< orphan*/  mmVIEWPORT_SIZE ; 

__attribute__((used)) static unsigned FUNC2(struct amdgpu_device *adev)
{
	u32 d1vga_control = FUNC1(mmD1VGA_CONTROL);
	unsigned size;

	if (FUNC0(d1vga_control, D1VGA_CONTROL, D1VGA_MODE_ENABLE)) {
		size = 9 * 1024 * 1024; /* reserve 8MB for vga emulator and 1 MB for FB */
	} else {
		u32 viewport = FUNC1(mmVIEWPORT_SIZE);
		size = (FUNC0(viewport, VIEWPORT_SIZE, VIEWPORT_HEIGHT) *
			FUNC0(viewport, VIEWPORT_SIZE, VIEWPORT_WIDTH) *
			4);
	}
	/* return 0 if the pre-OS buffer uses up most of vram */
	if ((adev->gmc.real_vram_size - size) < (8 * 1024 * 1024))
		return 0;
	return size;
}