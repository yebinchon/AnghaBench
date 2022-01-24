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
struct dm_verity_fec {scalar_t__ dev; scalar_t__ bufio; scalar_t__ data_bufio; int /*<<< orphan*/  cache; int /*<<< orphan*/  extra_pool; int /*<<< orphan*/  prealloc_pool; int /*<<< orphan*/  rs_pool; } ;
struct dm_verity {struct dm_verity_fec* fec; int /*<<< orphan*/  ti; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_verity_fec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_verity*) ; 

void FUNC6(struct dm_verity *v)
{
	struct dm_verity_fec *f = v->fec;

	if (!FUNC5(v))
		goto out;

	FUNC4(&f->rs_pool);
	FUNC4(&f->prealloc_pool);
	FUNC4(&f->extra_pool);
	FUNC3(f->cache);

	if (f->data_bufio)
		FUNC0(f->data_bufio);
	if (f->bufio)
		FUNC0(f->bufio);

	if (f->dev)
		FUNC1(v->ti, f->dev);
out:
	FUNC2(f);
	v->fec = NULL;
}