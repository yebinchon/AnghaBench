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
struct io_notify {int /*<<< orphan*/  c; int /*<<< orphan*/  count; int /*<<< orphan*/  wc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(unsigned long error, void *context)
{
	struct io_notify *endio = context;

	if (FUNC4(error != 0))
		FUNC5(endio->wc, -EIO, "error writing metadata");
	FUNC0(FUNC2(&endio->count) <= 0);
	if (FUNC1(&endio->count))
		FUNC3(&endio->c);
}