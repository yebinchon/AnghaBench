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
struct TYPE_2__ {int /*<<< orphan*/  module; } ;
struct ps_internal {TYPE_1__ pst; } ;

/* Variables and functions */
 struct ps_internal* FUNC0 (char const*) ; 
 int /*<<< orphan*/  _ps_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ps_internal *FUNC4(const char *name)
{
	struct ps_internal *psi;

	FUNC1(&_ps_lock);
	psi = FUNC0(name);
	if (psi && !FUNC2(psi->pst.module))
		psi = NULL;
	FUNC3(&_ps_lock);

	return psi;
}