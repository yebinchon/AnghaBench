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
typedef  int /*<<< orphan*/ **** scatterlist ;
struct dm_integrity_c {unsigned int journal_sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ******) ; 

__attribute__((used)) static void FUNC1(struct dm_integrity_c *ic, struct scatterlist **sl)
{
	unsigned i;
	for (i = 0; i < ic->journal_sections; i++)
		FUNC0(sl[i]);
	FUNC0(sl);
}