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
struct mirror_set {int /*<<< orphan*/  nr_mirrors; int /*<<< orphan*/  mirror; } ;
struct mirror {int /*<<< orphan*/  error_count; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mirror* FUNC1 (struct mirror_set*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct mirror *FUNC3(struct mirror_set *ms, sector_t sector)
{
	struct mirror *m = FUNC1(ms);

	do {
		if (FUNC2(!FUNC0(&m->error_count)))
			return m;

		if (m-- == ms->mirror)
			m += ms->nr_mirrors;
	} while (m != FUNC1(ms));

	return NULL;
}