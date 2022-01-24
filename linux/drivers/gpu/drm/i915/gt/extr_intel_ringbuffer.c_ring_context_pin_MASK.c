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
struct intel_context {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct intel_context*) ; 
 int FUNC1 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_context*) ; 

__attribute__((used)) static int FUNC3(struct intel_context *ce)
{
	int err;

	err = FUNC1(ce);
	if (err)
		return err;

	err = FUNC0(ce);
	if (err)
		goto err_active;

	return 0;

err_active:
	FUNC2(ce);
	return err;
}