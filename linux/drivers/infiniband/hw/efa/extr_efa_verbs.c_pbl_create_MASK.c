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
typedef  int /*<<< orphan*/  u8 ;
struct pbl_context {int pbl_buf_size_in_bytes; int physically_continuous; int /*<<< orphan*/  pbl_buf; } ;
struct ib_umem {int dummy; } ;
struct efa_dev {int /*<<< orphan*/  ibdev; } ;

/* Variables and functions */
 int EFA_CHUNK_PAYLOAD_PTR_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct efa_dev*,struct pbl_context*) ; 
 int FUNC5 (struct efa_dev*,struct pbl_context*) ; 
 int FUNC6 (struct efa_dev*,struct ib_umem*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct efa_dev *dev,
		      struct pbl_context *pbl,
		      struct ib_umem *umem,
		      int hp_cnt,
		      u8 hp_shift)
{
	int err;

	pbl->pbl_buf_size_in_bytes = hp_cnt * EFA_CHUNK_PAYLOAD_PTR_SIZE;
	pbl->pbl_buf = FUNC3(pbl->pbl_buf_size_in_bytes, GFP_KERNEL);
	if (!pbl->pbl_buf)
		return -ENOMEM;

	if (FUNC1(pbl->pbl_buf)) {
		pbl->physically_continuous = 0;
		err = FUNC6(dev, umem, pbl->pbl_buf, hp_cnt,
					hp_shift);
		if (err)
			goto err_free;

		err = FUNC5(dev, pbl);
		if (err)
			goto err_free;
	} else {
		pbl->physically_continuous = 1;
		err = FUNC6(dev, umem, pbl->pbl_buf, hp_cnt,
					hp_shift);
		if (err)
			goto err_free;

		err = FUNC4(dev, pbl);
		if (err)
			goto err_free;
	}

	FUNC0(&dev->ibdev,
		  "user_pbl_created: user_pages[%u], continuous[%u]\n",
		  hp_cnt, pbl->physically_continuous);

	return 0;

err_free:
	FUNC2(pbl->pbl_buf);
	return err;
}