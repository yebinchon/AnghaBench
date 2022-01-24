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
struct talitos_private {int dummy; } ;
struct talitos_edesc {scalar_t__ dma_link_tbl; int /*<<< orphan*/ * link_tbl; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_PTR_LNKTBL_JUMP ; 
 int /*<<< orphan*/  FUNC0 (struct talitos_ptr*,int /*<<< orphan*/ *,int) ; 
 struct talitos_private* FUNC1 (struct device*) ; 
 int FUNC2 (struct talitos_private*) ; 
 scalar_t__ FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct scatterlist*,int,unsigned int,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct talitos_ptr*,scalar_t__,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct talitos_ptr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct talitos_ptr*,int,int) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct scatterlist *src,
			      unsigned int len, struct talitos_edesc *edesc,
			      struct talitos_ptr *ptr, int sg_count,
			      unsigned int offset, int tbl_off, int elen,
			      bool force)
{
	struct talitos_private *priv = FUNC1(dev);
	bool is_sec1 = FUNC2(priv);

	if (!src) {
		FUNC5(ptr, 0, 0, is_sec1);
		return 1;
	}
	FUNC7(ptr, elen, is_sec1);
	if (sg_count == 1 && !force) {
		FUNC5(ptr, FUNC3(src) + offset, len, is_sec1);
		return sg_count;
	}
	if (is_sec1) {
		FUNC5(ptr, edesc->dma_link_tbl + offset, len, is_sec1);
		return sg_count;
	}
	sg_count = FUNC4(src, sg_count, offset, len, elen,
					 &edesc->link_tbl[tbl_off]);
	if (sg_count == 1 && !force) {
		/* Only one segment now, so no link tbl needed*/
		FUNC0(ptr, &edesc->link_tbl[tbl_off], is_sec1);
		return sg_count;
	}
	FUNC5(ptr, edesc->dma_link_tbl +
			    tbl_off * sizeof(struct talitos_ptr), len, is_sec1);
	FUNC6(ptr, DESC_PTR_LNKTBL_JUMP, is_sec1);

	return sg_count;
}