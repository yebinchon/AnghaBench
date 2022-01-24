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
struct v3d_dev {scalar_t__ reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct v3d_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v3d_dev*) ; 

__attribute__((used)) static void
FUNC3(struct v3d_dev *v3d)
{
	if (v3d->reset)
		FUNC0(v3d->reset);
	else
		FUNC2(v3d);

	FUNC1(v3d);
}