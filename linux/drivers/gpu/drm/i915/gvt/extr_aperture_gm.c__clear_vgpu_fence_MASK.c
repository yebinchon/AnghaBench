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
 int /*<<< orphan*/  FUNC0 (struct intel_vgpu*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_vgpu*) ; 

__attribute__((used)) static void FUNC2(struct intel_vgpu *vgpu)
{
	int i;

	for (i = 0; i < FUNC1(vgpu); i++)
		FUNC0(vgpu, i, 0);
}