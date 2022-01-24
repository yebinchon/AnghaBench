#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xa_mark_t ;
struct xarray {int dummy; } ;
struct TYPE_5__ {unsigned long xa_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,struct xarray*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (void*) ; 
 TYPE_1__ xas ; 
 void* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,void*) ; 

__attribute__((used)) static void *FUNC7(struct xarray *xa, unsigned long *indexp,
			     xa_mark_t filter)
{
	FUNC1(xas, xa, *indexp);
	void *entry;

	FUNC2();
	do {
		entry = FUNC5(&xas, ULONG_MAX, filter);
		if (FUNC4(entry))
			break;
	} while (FUNC6(&xas, entry));
	FUNC3();

	if (entry) {
		*indexp = xas.xa_index;
		if (FUNC4(entry))
			return NULL;
		return entry;
	}
	return FUNC0(-ENOENT);
}