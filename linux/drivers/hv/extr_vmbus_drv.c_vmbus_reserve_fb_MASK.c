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
struct TYPE_2__ {scalar_t__ lfb_base; int /*<<< orphan*/  lfb_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_BOOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __u32 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ fb_mmio ; 
 int /*<<< orphan*/  fb_mmio_name ; 
 int /*<<< orphan*/  hyperv_mmio ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ screen_info ; 

__attribute__((used)) static void FUNC3(void)
{
	int size;
	/*
	 * Make a claim for the frame buffer in the resource tree under the
	 * first node, which will be the one below 4GB.  The length seems to
	 * be underreported, particularly in a Generation 1 VM.  So start out
	 * reserving a larger area and make it smaller until it succeeds.
	 */

	if (screen_info.lfb_base) {
		if (FUNC1(EFI_BOOT))
			size = FUNC2(__u32, screen_info.lfb_size, 0x800000);
		else
			size = FUNC2(__u32, screen_info.lfb_size, 0x4000000);

		for (; !fb_mmio && (size >= 0x100000); size >>= 1) {
			fb_mmio = FUNC0(hyperv_mmio,
						   screen_info.lfb_base, size,
						   fb_mmio_name, 0);
		}
	}
}