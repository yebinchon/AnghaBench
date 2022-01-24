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
struct subtest {int (* func ) (void*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 

int
FUNC6(const char *caller, const struct subtest *st, int count, void *data)
{
	int err;

	for (; count--; st++) {
		FUNC1();
		if (FUNC4(current))
			return -EINTR;

		if (!FUNC0(caller, st->name))
			continue;

		FUNC3("dma-buf: Running %s/%s\n", caller, st->name);

		err = st->func(data);
		if (err && err != -EINTR) {
			FUNC2("dma-buf/%s: %s failed with error %d\n",
			       caller, st->name, err);
			return err;
		}
	}

	return 0;
}