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
struct scatterlist {int dummy; } ;
struct dsgl_walk {unsigned int nents; int last_sg_len; struct scatterlist* last_sg; TYPE_1__* to; } ;
struct TYPE_2__ {int /*<<< orphan*/ * addr; int /*<<< orphan*/ * len; } ;

/* Variables and functions */
 int CHCR_DST_SG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct scatterlist*) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static void  FUNC6(struct dsgl_walk *walk,
			   struct scatterlist *sg,
			      unsigned int slen,
			      unsigned int skip)
{
	int skip_len = 0;
	unsigned int left_size = slen, len = 0;
	unsigned int j = walk->nents;
	int offset, ent_len;

	if (!slen)
		return;
	while (sg && skip) {
		if (FUNC4(sg) <= skip) {
			skip -= FUNC4(sg);
			skip_len = 0;
			sg = FUNC5(sg);
		} else {
			skip_len = skip;
			skip = 0;
		}
	}

	while (left_size && sg) {
		len = FUNC2(u32, left_size, FUNC4(sg) - skip_len);
		offset = 0;
		while (len) {
			ent_len =  FUNC2(u32, len, CHCR_DST_SG_SIZE);
			walk->to->len[j % 8] = FUNC1(ent_len);
			walk->to->addr[j % 8] = FUNC0(FUNC3(sg) +
						      offset + skip_len);
			offset += ent_len;
			len -= ent_len;
			j++;
			if ((j % 8) == 0)
				walk->to++;
		}
		walk->last_sg = sg;
		walk->last_sg_len = FUNC2(u32, left_size, FUNC4(sg) -
					  skip_len) + skip_len;
		left_size -= FUNC2(u32, left_size, FUNC4(sg) - skip_len);
		skip_len = 0;
		sg = FUNC5(sg);
	}
	walk->nents = j;
}