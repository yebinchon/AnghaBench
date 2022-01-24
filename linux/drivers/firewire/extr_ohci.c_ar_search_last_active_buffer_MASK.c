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
struct ar_context {unsigned int last_buffer_index; TYPE_1__* descriptors; } ;
typedef  scalar_t__ __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  res_count; } ;

/* Variables and functions */
 unsigned int MAX_AR_PACKET_SIZE ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar_context*,char*) ; 
 unsigned int FUNC2 (struct ar_context*) ; 
 unsigned int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static unsigned int FUNC7(struct ar_context *ctx,
						 unsigned int *buffer_offset)
{
	unsigned int i, next_i, last = ctx->last_buffer_index;
	__le16 res_count, next_res_count;

	i = FUNC2(ctx);
	res_count = FUNC0(ctx->descriptors[i].res_count);

	/* A buffer that is not yet completely filled must be the last one. */
	while (i != last && res_count == 0) {

		/* Peek at the next descriptor. */
		next_i = FUNC3(i);
		FUNC6(); /* read descriptors in order */
		next_res_count = FUNC0(ctx->descriptors[next_i].res_count);
		/*
		 * If the next descriptor is still empty, we must stop at this
		 * descriptor.
		 */
		if (next_res_count == FUNC4(PAGE_SIZE)) {
			/*
			 * The exception is when the DMA data for one packet is
			 * split over three buffers; in this case, the middle
			 * buffer's descriptor might be never updated by the
			 * controller and look still empty, and we have to peek
			 * at the third one.
			 */
			if (MAX_AR_PACKET_SIZE > PAGE_SIZE && i != last) {
				next_i = FUNC3(next_i);
				FUNC6();
				next_res_count = FUNC0(ctx->descriptors[next_i].res_count);
				if (next_res_count != FUNC4(PAGE_SIZE))
					goto next_buffer_is_active;
			}

			break;
		}

next_buffer_is_active:
		i = next_i;
		res_count = next_res_count;
	}

	FUNC6(); /* read res_count before the DMA data */

	*buffer_offset = PAGE_SIZE - FUNC5(res_count);
	if (*buffer_offset > PAGE_SIZE) {
		*buffer_offset = 0;
		FUNC1(ctx, "corrupted descriptor");
	}

	return i;
}