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
struct sun4i_frontend {int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sun4i_frontend* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master,
			    void *data)
{
	struct sun4i_frontend *frontend = FUNC0(dev);

	FUNC1(&frontend->list);
	FUNC2(dev);
}