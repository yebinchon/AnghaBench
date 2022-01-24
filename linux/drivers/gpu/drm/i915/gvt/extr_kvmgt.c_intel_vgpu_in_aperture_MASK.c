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
typedef  scalar_t__ u64 ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct intel_vgpu*) ; 
 scalar_t__ FUNC1 (struct intel_vgpu*) ; 

__attribute__((used)) static inline bool FUNC2(struct intel_vgpu *vgpu, u64 off)
{
	return off >= FUNC0(vgpu) &&
	       off < FUNC0(vgpu) + FUNC1(vgpu);
}