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
struct usnic_vnic_res_spec {TYPE_1__* resources; } ;
struct usnic_vnic_res_chunk {int dummy; } ;
struct usnic_vnic {int dummy; } ;
typedef  enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_2__ {scalar_t__ type; int cnt; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct usnic_vnic_res_chunk** FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (struct usnic_vnic_res_chunk*) ; 
 int FUNC2 (struct usnic_vnic_res_chunk*) ; 
 scalar_t__ USNIC_VNIC_RES_TYPE_EOL ; 
 struct usnic_vnic_res_chunk** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usnic_vnic_res_chunk**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct usnic_vnic_res_chunk* FUNC6 (struct usnic_vnic*,int,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct usnic_vnic*) ; 
 int /*<<< orphan*/  FUNC8 (struct usnic_vnic_res_chunk*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static struct usnic_vnic_res_chunk**
FUNC10(struct usnic_vnic *vnic,
			struct usnic_vnic_res_spec *res_spec, void *owner_obj)
{
	enum usnic_vnic_res_type res_type;
	struct usnic_vnic_res_chunk **res_chunk_list;
	int err, i, res_cnt, res_lst_sz;

	for (res_lst_sz = 0;
		res_spec->resources[res_lst_sz].type != USNIC_VNIC_RES_TYPE_EOL;
		res_lst_sz++) {
		/* Do Nothing */
	}

	res_chunk_list = FUNC3(res_lst_sz + 1, sizeof(*res_chunk_list),
					GFP_ATOMIC);
	if (!res_chunk_list)
		return FUNC0(-ENOMEM);

	for (i = 0; res_spec->resources[i].type != USNIC_VNIC_RES_TYPE_EOL;
		i++) {
		res_type = res_spec->resources[i].type;
		res_cnt = res_spec->resources[i].cnt;

		res_chunk_list[i] = FUNC6(vnic, res_type,
					res_cnt, owner_obj);
		if (FUNC1(res_chunk_list[i])) {
			err = res_chunk_list[i] ?
					FUNC2(res_chunk_list[i]) : -ENOMEM;
			FUNC5("Failed to get %s from %s with err %d\n",
				FUNC9(res_type),
				FUNC7(vnic),
				err);
			goto out_free_res;
		}
	}

	return res_chunk_list;

out_free_res:
	for (i--; i >= 0; i--)
		FUNC8(res_chunk_list[i]);
	FUNC4(res_chunk_list);
	return FUNC0(err);
}