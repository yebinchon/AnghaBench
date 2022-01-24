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
typedef  scalar_t__ u32 ;
struct vbva_record {int len_and_flags; } ;
struct vbva_buffer {scalar_t__ partial_write_tresh; scalar_t__ free_offset; scalar_t__ data_len; } ;
struct vbva_buf_ctx {int buffer_overflow; struct vbva_record* record; struct vbva_buffer* vbva; } ;
struct gen_pool {int dummy; } ;

/* Variables and functions */
 int VBVA_F_RECORD_PARTIAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vbva_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct gen_pool*) ; 
 int /*<<< orphan*/  FUNC3 (struct vbva_buf_ctx*,void const*,scalar_t__,scalar_t__) ; 

bool FUNC4(struct vbva_buf_ctx *vbva_ctx, struct gen_pool *ctx,
		const void *p, u32 len)
{
	struct vbva_record *record;
	struct vbva_buffer *vbva;
	u32 available;

	vbva = vbva_ctx->vbva;
	record = vbva_ctx->record;

	if (!vbva || vbva_ctx->buffer_overflow ||
	    !record || !(record->len_and_flags & VBVA_F_RECORD_PARTIAL))
		return false;

	available = FUNC1(vbva);

	while (len > 0) {
		u32 chunk = len;

		if (chunk >= available) {
			FUNC2(ctx);
			available = FUNC1(vbva);
		}

		if (chunk >= available) {
			if (FUNC0(available <= vbva->partial_write_tresh)) {
				vbva_ctx->buffer_overflow = true;
				return false;
			}
			chunk = available - vbva->partial_write_tresh;
		}

		FUNC3(vbva_ctx, p, chunk,
					  vbva->free_offset);

		vbva->free_offset = (vbva->free_offset + chunk) %
				    vbva->data_len;
		record->len_and_flags += chunk;
		available -= chunk;
		len -= chunk;
		p += chunk;
	}

	return true;
}