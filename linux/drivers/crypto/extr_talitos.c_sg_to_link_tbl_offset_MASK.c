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
struct talitos_ptr {int dummy; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_PTR_LNKTBL_RET ; 
 scalar_t__ FUNC0 (struct scatterlist*) ; 
 unsigned int FUNC1 (struct scatterlist*) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct talitos_ptr*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct talitos_ptr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scatterlist *sg, int sg_count,
				 unsigned int offset, int datalen, int elen,
				 struct talitos_ptr *link_tbl_ptr)
{
	int n_sg = elen ? sg_count + 1 : sg_count;
	int count = 0;
	int cryptlen = datalen + elen;

	while (cryptlen && sg && n_sg--) {
		unsigned int len = FUNC1(sg);

		if (offset >= len) {
			offset -= len;
			goto next;
		}

		len -= offset;

		if (len > cryptlen)
			len = cryptlen;

		if (datalen > 0 && len > datalen) {
			FUNC3(link_tbl_ptr + count,
				       FUNC0(sg) + offset, datalen, 0);
			FUNC4(link_tbl_ptr + count, 0, 0);
			count++;
			len -= datalen;
			offset += datalen;
		}
		FUNC3(link_tbl_ptr + count,
			       FUNC0(sg) + offset, len, 0);
		FUNC4(link_tbl_ptr + count, 0, 0);
		count++;
		cryptlen -= len;
		datalen -= len;
		offset = 0;

next:
		sg = FUNC2(sg);
	}

	/* tag end of link table */
	if (count > 0)
		FUNC4(link_tbl_ptr + count - 1,
				       DESC_PTR_LNKTBL_RET, 0);

	return count;
}