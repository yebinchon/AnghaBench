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
struct igt_spinner {int /*<<< orphan*/  hws; int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct igt_spinner*) ; 

void FUNC3(struct igt_spinner *spin)
{
	FUNC2(spin);

	FUNC1(spin->obj);
	FUNC0(spin->obj);

	FUNC1(spin->hws);
	FUNC0(spin->hws);
}