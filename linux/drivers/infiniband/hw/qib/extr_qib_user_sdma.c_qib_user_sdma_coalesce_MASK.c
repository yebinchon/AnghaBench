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
struct qib_user_sdma_queue {int dummy; } ;
struct qib_user_sdma_pkt {int dummy; } ;
struct qib_devdata {int dummy; } ;
struct page {int dummy; } ;
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct qib_devdata const*,struct qib_user_sdma_queue*,struct qib_user_sdma_pkt*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 

__attribute__((used)) static int FUNC6(const struct qib_devdata *dd,
				  struct qib_user_sdma_queue *pq,
				  struct qib_user_sdma_pkt *pkt,
				  const struct iovec *iov,
				  unsigned long niov)
{
	int ret = 0;
	struct page *page = FUNC1(GFP_KERNEL);
	void *mpage_save;
	char *mpage;
	int i;
	int len = 0;

	if (!page) {
		ret = -ENOMEM;
		goto done;
	}

	mpage = FUNC3(page);
	mpage_save = mpage;
	for (i = 0; i < niov; i++) {
		int cfur;

		cfur = FUNC2(mpage,
				      iov[i].iov_base, iov[i].iov_len);
		if (cfur) {
			ret = -EFAULT;
			goto free_unmap;
		}

		mpage += iov[i].iov_len;
		len += iov[i].iov_len;
	}

	ret = FUNC5(dd, pq, pkt,
			page, 0, 0, len, mpage_save);
	goto done;

free_unmap:
	FUNC4(page);
	FUNC0(page);
done:
	return ret;
}