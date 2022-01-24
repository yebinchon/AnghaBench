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
struct intel_context {int /*<<< orphan*/  active; int /*<<< orphan*/  engine; int /*<<< orphan*/  gem_context; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct intel_context *ce)
{
	int err;

	err = FUNC0(&ce->active);
	if (err)
		return err;

	/* Preallocate tracking nodes */
	if (!FUNC3(ce->gem_context)) {
		err = FUNC1(&ce->active,
							      ce->engine);
		if (err) {
			FUNC2(&ce->active);
			return err;
		}
	}

	return 0;
}