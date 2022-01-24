#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct omap_des_dev {int flags; TYPE_2__* req; TYPE_1__* ctx; } ;
struct TYPE_4__ {scalar_t__ info; } ;
struct TYPE_3__ {int keylen; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_des_dev*) ; 
 int DES_REG_CTRL_CBC ; 
 int DES_REG_CTRL_DIRECTION ; 
 int DES_REG_CTRL_TDES ; 
 int /*<<< orphan*/  FUNC1 (struct omap_des_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_des_dev*,int) ; 
 int FLAGS_CBC ; 
 int FLAGS_ENCRYPT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct omap_des_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_des_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_des_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_des_dev*,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC8(struct omap_des_dev *dd)
{
	unsigned int key32;
	int i, err;
	u32 val = 0, mask = 0;

	err = FUNC4(dd);
	if (err)
		return err;

	key32 = dd->ctx->keylen / sizeof(u32);

	/* it seems a key should always be set even if it has not changed */
	for (i = 0; i < key32; i++) {
		FUNC5(dd, FUNC2(dd, i),
			       FUNC3(dd->ctx->key[i]));
	}

	if ((dd->flags & FLAGS_CBC) && dd->req->info)
		FUNC7(dd, FUNC1(dd, 0), dd->req->info, 2);

	if (dd->flags & FLAGS_CBC)
		val |= DES_REG_CTRL_CBC;
	if (dd->flags & FLAGS_ENCRYPT)
		val |= DES_REG_CTRL_DIRECTION;
	if (key32 == 6)
		val |= DES_REG_CTRL_TDES;

	mask |= DES_REG_CTRL_CBC | DES_REG_CTRL_DIRECTION | DES_REG_CTRL_TDES;

	FUNC6(dd, FUNC0(dd), val, mask);

	return 0;
}