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
typedef  int u32 ;
struct omap_aes_reqctx {scalar_t__ auth_tag; } ;
struct omap_aes_dev {int flags; TYPE_1__* aead_req; int /*<<< orphan*/  authsize; scalar_t__ total; } ;
struct TYPE_2__ {scalar_t__ assoclen; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_aes_dev*,int) ; 
 int FLAGS_ENCRYPT ; 
 struct omap_aes_reqctx* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_aes_dev*) ; 
 int FUNC3 (struct omap_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(void *data)
{
	struct omap_aes_dev *dd = data;
	struct omap_aes_reqctx *rctx;
	int i, val;
	u32 *auth_tag, tag[4];

	if (!(dd->flags & FLAGS_ENCRYPT))
		FUNC4(tag, dd->aead_req->src,
					 dd->total + dd->aead_req->assoclen,
					 dd->authsize, 0);

	rctx = FUNC1(dd->aead_req);
	auth_tag = (u32 *)rctx->auth_tag;
	for (i = 0; i < 4; i++) {
		val = FUNC3(dd, FUNC0(dd, i));
		auth_tag[i] = val ^ auth_tag[i];
		if (!(dd->flags & FLAGS_ENCRYPT))
			auth_tag[i] = auth_tag[i] ^ tag[i];
	}

	FUNC2(dd);
}