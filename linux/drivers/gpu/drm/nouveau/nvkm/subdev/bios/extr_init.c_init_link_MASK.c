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
struct nvbios_init {int link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct nvbios_init*) ; 

__attribute__((used)) static inline int
FUNC2(struct nvbios_init *init)
{
	if (FUNC1(init)) {
		if (init->link)
			return init->link == 2;
		FUNC0("script needs OR link\n");
	}
	return 0;
}