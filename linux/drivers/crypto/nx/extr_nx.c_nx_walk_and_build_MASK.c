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
struct scatterlist {unsigned int length; } ;
struct scatter_walk {struct scatterlist* sg; } ;
struct nx_sg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCATTERWALK_FROM_SG ; 
 struct nx_sg* FUNC0 (struct nx_sg*,char*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatter_walk*,unsigned int) ; 
 unsigned int FUNC2 (struct scatter_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatter_walk*,int /*<<< orphan*/ ,unsigned int) ; 
 char* FUNC4 (struct scatter_walk*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatter_walk*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct scatterlist* FUNC7 (struct scatterlist*) ; 

struct nx_sg *FUNC8(struct nx_sg       *nx_dst,
				unsigned int        sglen,
				struct scatterlist *sg_src,
				unsigned int        start,
				unsigned int       *src_len)
{
	struct scatter_walk walk;
	struct nx_sg *nx_sg = nx_dst;
	unsigned int n, offset = 0, len = *src_len;
	char *dst;

	/* we need to fast forward through @start bytes first */
	for (;;) {
		FUNC5(&walk, sg_src);

		if (start < offset + sg_src->length)
			break;

		offset += sg_src->length;
		sg_src = FUNC7(sg_src);
	}

	/* start - offset is the number of bytes to advance in the scatterlist
	 * element we're currently looking at */
	FUNC1(&walk, start - offset);

	while (len && (nx_sg - nx_dst) < sglen) {
		n = FUNC2(&walk, len);
		if (!n) {
			/* In cases where we have scatterlist chain sg_next
			 * handles with it properly */
			FUNC5(&walk, FUNC7(walk.sg));
			n = FUNC2(&walk, len);
		}
		dst = FUNC4(&walk);

		nx_sg = FUNC0(nx_sg, dst, &n, sglen - (nx_sg - nx_dst));
		len -= n;

		FUNC6(dst);
		FUNC1(&walk, n);
		FUNC3(&walk, SCATTERWALK_FROM_SG, len);
	}
	/* update to_process */
	*src_len -= len;

	/* return the moved destination pointer */
	return nx_sg;
}