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
struct vmw_piter {int /*<<< orphan*/  iter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct vmw_piter*) ; 

__attribute__((used)) static bool FUNC2(struct vmw_piter *viter)
{
	bool ret = FUNC1(viter);

	return FUNC0(&viter->iter) && ret;
}