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
struct usnic_vnic_res_chunk {int cnt; int type; struct usnic_vnic* vnic; struct usnic_vnic_res** res; int /*<<< orphan*/  free_cnt; } ;
struct usnic_vnic_res {void* owner; } ;
struct usnic_vnic {int /*<<< orphan*/  res_lock; struct usnic_vnic_res_chunk* chunks; } ;
typedef  enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct usnic_vnic_res_chunk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct usnic_vnic_res** FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usnic_vnic_res_chunk*) ; 
 struct usnic_vnic_res_chunk* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct usnic_vnic*,int) ; 

struct usnic_vnic_res_chunk *
FUNC8(struct usnic_vnic *vnic, enum usnic_vnic_res_type type,
				int cnt, void *owner)
{
	struct usnic_vnic_res_chunk *src, *ret;
	struct usnic_vnic_res *res;
	int i;

	if (FUNC7(vnic, type) < cnt || cnt < 0 || !owner)
		return FUNC0(-EINVAL);

	ret = FUNC4(sizeof(*ret), GFP_ATOMIC);
	if (!ret)
		return FUNC0(-ENOMEM);

	if (cnt > 0) {
		ret->res = FUNC2(cnt, sizeof(*(ret->res)), GFP_ATOMIC);
		if (!ret->res) {
			FUNC3(ret);
			return FUNC0(-ENOMEM);
		}

		FUNC5(&vnic->res_lock);
		src = &vnic->chunks[type];
		for (i = 0; i < src->cnt && ret->cnt < cnt; i++) {
			res = src->res[i];
			if (!res->owner) {
				src->free_cnt--;
				res->owner = owner;
				ret->res[ret->cnt++] = res;
			}
		}

		FUNC6(&vnic->res_lock);
	}
	ret->type = type;
	ret->vnic = vnic;
	FUNC1(ret->cnt != cnt);

	return ret;
}