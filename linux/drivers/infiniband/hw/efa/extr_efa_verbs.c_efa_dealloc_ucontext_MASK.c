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
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct efa_ucontext {int /*<<< orphan*/  uarn; } ;
struct efa_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efa_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efa_dev*,struct efa_ucontext*) ; 
 struct efa_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct efa_ucontext* FUNC3 (struct ib_ucontext*) ; 

void FUNC4(struct ib_ucontext *ibucontext)
{
	struct efa_ucontext *ucontext = FUNC3(ibucontext);
	struct efa_dev *dev = FUNC2(ibucontext->device);

	FUNC1(dev, ucontext);
	FUNC0(dev, ucontext->uarn);
}