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
typedef  int u16 ;
struct scatterlist {int length; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int OMAP_CRYPTO_FORCE_SINGLE_ENTRY ; 
 struct scatterlist* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int FUNC3 (struct scatterlist*) ; 
 struct scatterlist* FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int total, int bs,
				     struct scatterlist **sg,
				     struct scatterlist *new_sg, u16 flags)
{
	int n = FUNC3(*sg);
	struct scatterlist *tmp;

	if (!(flags & OMAP_CRYPTO_FORCE_SINGLE_ENTRY)) {
		new_sg = FUNC0(n, sizeof(*sg), GFP_KERNEL);
		if (!new_sg)
			return -ENOMEM;

		FUNC1(new_sg, n);
	}

	tmp = new_sg;

	while (*sg && total) {
		int len = (*sg)->length;

		if (total < len)
			len = total;

		if (len > 0) {
			total -= len;
			FUNC6(tmp, FUNC5(*sg), len, (*sg)->offset);
			if (total <= 0)
				FUNC2(tmp);
			tmp = FUNC4(tmp);
		}

		*sg = FUNC4(*sg);
	}

	*sg = new_sg;

	return 0;
}