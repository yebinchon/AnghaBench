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
struct rmi_function_handler {int /*<<< orphan*/  (* remove ) (struct rmi_function*) ;} ;
struct rmi_function {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rmi_function*) ; 
 struct rmi_function* FUNC1 (struct device*) ; 
 struct rmi_function_handler* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct rmi_function *fn = FUNC1(dev);
	struct rmi_function_handler *handler =
					FUNC2(dev->driver);

	if (handler->remove)
		handler->remove(fn);

	return 0;
}