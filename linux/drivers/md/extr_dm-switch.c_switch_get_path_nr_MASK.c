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
struct switch_ctx {int region_size_bits; unsigned int nr_paths; int /*<<< orphan*/  region_size; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct switch_ctx*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static unsigned FUNC3(struct switch_ctx *sctx, sector_t offset)
{
	unsigned path_nr;
	sector_t p;

	p = offset;
	if (sctx->region_size_bits >= 0)
		p >>= sctx->region_size_bits;
	else
		FUNC0(p, sctx->region_size);

	path_nr = FUNC1(sctx, p);

	/* This can only happen if the processor uses non-atomic stores. */
	if (FUNC2(path_nr >= sctx->nr_paths))
		path_nr = 0;

	return path_nr;
}