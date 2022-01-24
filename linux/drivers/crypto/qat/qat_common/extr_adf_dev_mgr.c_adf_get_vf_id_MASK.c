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
struct adf_accel_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct adf_accel_dev*) ; 

__attribute__((used)) static int FUNC3(struct adf_accel_dev *vf)
{
	return ((7 * (FUNC1(FUNC2(vf)->devfn) - 1)) +
		FUNC0(FUNC2(vf)->devfn) +
		(FUNC1(FUNC2(vf)->devfn) - 1));
}