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
struct s5p_aes_dev {TYPE_1__* req; } ;
struct TYPE_2__ {int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 struct scatterlist* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,void*,int) ; 

__attribute__((used)) static int FUNC8(struct s5p_aes_dev *dev, struct scatterlist *src,
			   struct scatterlist **dst)
{
	void *pages;
	int len;

	*dst = FUNC4(sizeof(**dst), GFP_ATOMIC);
	if (!*dst)
		return -ENOMEM;

	len = FUNC0(dev->req->nbytes, AES_BLOCK_SIZE);
	pages = (void *)FUNC1(GFP_ATOMIC, FUNC2(len));
	if (!pages) {
		FUNC3(*dst);
		*dst = NULL;
		return -ENOMEM;
	}

	FUNC5(pages, src, dev->req->nbytes, 0);

	FUNC6(*dst, 1);
	FUNC7(*dst, pages, len);

	return 0;
}