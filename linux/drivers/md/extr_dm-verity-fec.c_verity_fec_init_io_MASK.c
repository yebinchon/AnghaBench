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
struct dm_verity_io {int /*<<< orphan*/  v; } ;
struct dm_verity_fec_io {scalar_t__ level; int /*<<< orphan*/ * output; scalar_t__ nbufs; int /*<<< orphan*/  bufs; int /*<<< orphan*/ * rs; } ;

/* Variables and functions */
 struct dm_verity_fec_io* FUNC0 (struct dm_verity_io*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct dm_verity_io *io)
{
	struct dm_verity_fec_io *fio = FUNC0(io);

	if (!FUNC2(io->v))
		return;

	fio->rs = NULL;
	FUNC1(fio->bufs, 0, sizeof(fio->bufs));
	fio->nbufs = 0;
	fio->output = NULL;
	fio->level = 0;
}