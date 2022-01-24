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
struct msc_block_desc {int /*<<< orphan*/  valid_dw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msc_block_desc*) ; 

__attribute__((used)) static inline bool FUNC1(struct msc_block_desc *bdesc)
{
	/* header hasn't been written */
	if (!bdesc->valid_dw)
		return true;

	/* valid_dw includes the header */
	if (!FUNC0(bdesc))
		return true;

	return false;
}