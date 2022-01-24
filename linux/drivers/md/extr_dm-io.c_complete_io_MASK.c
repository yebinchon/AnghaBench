#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct io {unsigned long error_bits; TYPE_1__* client; scalar_t__ vma_invalidate_size; int /*<<< orphan*/  vma_invalidate_address; void* context; int /*<<< orphan*/  (* callback ) (unsigned long,void*) ;} ;
typedef  int /*<<< orphan*/  (* io_notify_fn ) (unsigned long,void*) ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct io*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct io *io)
{
	unsigned long error_bits = io->error_bits;
	io_notify_fn fn = io->callback;
	void *context = io->context;

	if (io->vma_invalidate_size)
		FUNC0(io->vma_invalidate_address,
					     io->vma_invalidate_size);

	FUNC1(io, &io->client->pool);
	fn(error_bits, context);
}