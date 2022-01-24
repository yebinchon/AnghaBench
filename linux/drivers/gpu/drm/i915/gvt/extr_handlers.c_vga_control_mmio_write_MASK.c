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
struct intel_vgpu {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int VGA_DISP_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct intel_vgpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct intel_vgpu *vgpu, unsigned int offset,
		void *p_data, unsigned int bytes)
{
	bool vga_disable;

	FUNC2(vgpu, offset, p_data, bytes);
	vga_disable = FUNC1(vgpu, offset) & VGA_DISP_DISABLE;

	FUNC0("vgpu%d: %s VGA mode\n", vgpu->id,
			vga_disable ? "Disable" : "Enable");
	return 0;
}