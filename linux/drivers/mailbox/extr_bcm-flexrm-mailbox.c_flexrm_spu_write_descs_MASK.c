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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {struct scatterlist* dst; struct scatterlist* src; } ;
struct brcm_message {TYPE_1__ spu; } ;

/* Variables and functions */
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void**,scalar_t__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*) ; 
 unsigned int FUNC9 (struct scatterlist*) ; 
 struct scatterlist* FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void *FUNC12(struct brcm_message *msg, u32 nhcnt,
				     u32 reqid, void *desc_ptr, u32 toggle,
				     void *start_desc, void *end_desc)
{
	u64 d;
	u32 nhpos = 0;
	void *orig_desc_ptr = desc_ptr;
	unsigned int dst_target = 0;
	struct scatterlist *src_sg = msg->spu.src, *dst_sg = msg->spu.dst;

	while (src_sg || dst_sg) {
		if (src_sg) {
			if (FUNC9(src_sg) & 0xf)
				d = FUNC6(FUNC8(src_sg),
						     FUNC9(src_sg));
			else
				d = FUNC4(FUNC8(src_sg),
						      FUNC9(src_sg)/16);
			FUNC1(nhpos, nhcnt, reqid,
					     d, &desc_ptr, &toggle,
					     start_desc, end_desc);
			nhpos++;
			dst_target = FUNC9(src_sg);
			src_sg = FUNC10(src_sg);
		} else
			dst_target = UINT_MAX;

		while (dst_target && dst_sg) {
			if (FUNC9(dst_sg) & 0xf)
				d = FUNC0(FUNC8(dst_sg),
						     FUNC9(dst_sg));
			else
				d = FUNC3(FUNC8(dst_sg),
						      FUNC9(dst_sg)/16);
			FUNC1(nhpos, nhcnt, reqid,
					     d, &desc_ptr, &toggle,
					     start_desc, end_desc);
			nhpos++;
			if (FUNC9(dst_sg) < dst_target)
				dst_target -= FUNC9(dst_sg);
			else
				dst_target = 0;
			dst_sg = FUNC10(dst_sg);
		}
	}

	/* Null descriptor with invalid toggle bit */
	FUNC7(desc_ptr, FUNC5(!toggle));

	/* Ensure that descriptors have been written to memory */
	FUNC11();

	/* Flip toggle bit in header */
	FUNC2(orig_desc_ptr);

	return desc_ptr;
}