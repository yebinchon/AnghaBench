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
struct sii902x {int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sii902x* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sii902x*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				      void *data, bool enable)
{
	struct sii902x *sii902x = FUNC0(dev);

	FUNC1(&sii902x->mutex);

	FUNC3(sii902x, enable);

	FUNC2(&sii902x->mutex);

	return 0;
}