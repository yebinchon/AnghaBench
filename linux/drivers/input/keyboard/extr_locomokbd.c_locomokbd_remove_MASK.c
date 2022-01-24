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
struct locomokbd {int /*<<< orphan*/  input; int /*<<< orphan*/  timer; } ;
struct locomo_dev {int /*<<< orphan*/  length; scalar_t__ mapbase; int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct locomokbd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct locomokbd*) ; 
 struct locomokbd* FUNC4 (struct locomo_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct locomo_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct locomo_dev *dev)
{
	struct locomokbd *locomokbd = FUNC4(dev);

	FUNC1(dev->irq[0], locomokbd);

	FUNC0(&locomokbd->timer);

	FUNC2(locomokbd->input);
	FUNC5(dev, NULL);

	FUNC6((unsigned long) dev->mapbase, dev->length);

	FUNC3(locomokbd);

	return 0;
}