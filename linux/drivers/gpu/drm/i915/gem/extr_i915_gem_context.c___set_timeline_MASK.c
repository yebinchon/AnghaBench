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
struct intel_timeline {int dummy; } ;

/* Variables and functions */
 struct intel_timeline* FUNC0 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_timeline*) ; 

__attribute__((used)) static void FUNC2(struct intel_timeline **dst,
			   struct intel_timeline *src)
{
	struct intel_timeline *old = *dst;

	*dst = src ? FUNC0(src) : NULL;

	if (old)
		FUNC1(old);
}