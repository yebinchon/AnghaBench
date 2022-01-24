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
struct offset {unsigned int offset; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static struct offset *FUNC2(unsigned o)
{
	struct offset *offset;

	offset = (struct offset *)FUNC1(sizeof(struct offset));
	if (offset) {
		FUNC0(&offset->list);
		offset->offset = o;
	}
	return offset;
}