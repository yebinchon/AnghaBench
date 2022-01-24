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
struct pstore_record {int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFIVARS_DATA_SIZE_MAX ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct pstore_record*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct pstore_record *record)
{
	ssize_t size;

	record->buf = FUNC4(EFIVARS_DATA_SIZE_MAX, GFP_KERNEL);
	if (!record->buf)
		return -ENOMEM;

	if (FUNC1()) {
		size = -EINTR;
		goto out;
	}
	size = FUNC0(record);
	FUNC2();

out:
	if (size <= 0) {
		FUNC3(record->buf);
		record->buf = NULL;
	}
	return size;
}