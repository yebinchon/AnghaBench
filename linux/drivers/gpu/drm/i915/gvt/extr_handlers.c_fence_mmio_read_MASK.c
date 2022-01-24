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
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 
 int FUNC2 (struct intel_vgpu*,int /*<<< orphan*/ ,void*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct intel_vgpu *vgpu, unsigned int off,
		void *p_data, unsigned int bytes)
{
	int ret;

	ret = FUNC2(vgpu, FUNC0(off),
			p_data, bytes);
	if (ret)
		return ret;
	FUNC1(vgpu, off, p_data, bytes);
	return 0;
}