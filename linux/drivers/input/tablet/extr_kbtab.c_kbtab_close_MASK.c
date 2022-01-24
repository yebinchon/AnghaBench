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
struct kbtab {int /*<<< orphan*/  irq; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct kbtab* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev)
{
	struct kbtab *kbtab = FUNC0(dev);

	FUNC1(kbtab->irq);
}