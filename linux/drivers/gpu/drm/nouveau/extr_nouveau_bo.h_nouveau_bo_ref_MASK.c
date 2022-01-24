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
struct nouveau_bo {int /*<<< orphan*/  bo; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nouveau_bo* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC3(struct nouveau_bo *ref, struct nouveau_bo **pnvbo)
{
	struct nouveau_bo *prev;

	if (!pnvbo)
		return -EINVAL;
	prev = *pnvbo;

	if (ref) {
		FUNC1(&ref->bo);
		*pnvbo = FUNC0(&ref->bo);
	} else {
		*pnvbo = NULL;
	}
	if (prev)
		FUNC2(&prev->bo);

	return 0;
}