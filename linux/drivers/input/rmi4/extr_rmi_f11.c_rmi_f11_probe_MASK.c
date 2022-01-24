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
struct rmi_function {int /*<<< orphan*/  dev; } ;
struct f11_data {int /*<<< orphan*/  sensor; } ;

/* Variables and functions */
 struct f11_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rmi_function*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rmi_function*) ; 

__attribute__((used)) static int FUNC3(struct rmi_function *fn)
{
	int error;
	struct f11_data *f11;

	error = FUNC2(fn);
	if (error)
		return error;

	f11 = FUNC0(&fn->dev);
	error = FUNC1(fn, &f11->sensor);
	if (error)
		return error;

	return 0;
}