#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_6__ {scalar_t__ idx; scalar_t__ val; } ;
struct TYPE_5__ {char const* name; TYPE_1__* fops; int /*<<< orphan*/  minor; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  open; int /*<<< orphan*/  poll; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  owner; } ;
struct hvutil_transport {int (* on_msg ) (void*,int) ;void (* on_reset ) () ;int /*<<< orphan*/  list; TYPE_3__ cn_id; TYPE_2__ mdev; int /*<<< orphan*/  release; int /*<<< orphan*/  lock; int /*<<< orphan*/  outmsg_q; TYPE_1__ fops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hvt_cn_callback ; 
 int /*<<< orphan*/  hvt_list ; 
 int /*<<< orphan*/  hvt_list_lock ; 
 int /*<<< orphan*/  hvt_op_open ; 
 int /*<<< orphan*/  hvt_op_poll ; 
 int /*<<< orphan*/  hvt_op_read ; 
 int /*<<< orphan*/  hvt_op_release ; 
 int /*<<< orphan*/  hvt_op_write ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hvutil_transport*) ; 
 struct hvutil_transport* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct hvutil_transport *FUNC11(const char *name,
					       u32 cn_idx, u32 cn_val,
					       int (*on_msg)(void *, int),
					       void (*on_reset)(void))
{
	struct hvutil_transport *hvt;

	hvt = FUNC4(sizeof(*hvt), GFP_KERNEL);
	if (!hvt)
		return NULL;

	hvt->cn_id.idx = cn_idx;
	hvt->cn_id.val = cn_val;

	hvt->mdev.minor = MISC_DYNAMIC_MINOR;
	hvt->mdev.name = name;

	hvt->fops.owner = THIS_MODULE;
	hvt->fops.read = hvt_op_read;
	hvt->fops.write = hvt_op_write;
	hvt->fops.poll = hvt_op_poll;
	hvt->fops.open = hvt_op_open;
	hvt->fops.release = hvt_op_release;

	hvt->mdev.fops = &hvt->fops;

	FUNC2(&hvt->outmsg_q);
	FUNC8(&hvt->lock);
	FUNC1(&hvt->release);

	FUNC9(&hvt_list_lock);
	FUNC5(&hvt->list, &hvt_list);
	FUNC10(&hvt_list_lock);

	hvt->on_msg = on_msg;
	hvt->on_reset = on_reset;

	if (FUNC7(&hvt->mdev))
		goto err_free_hvt;

	/* Use cn_id.idx/cn_id.val to determine if we need to setup netlink */
	if (hvt->cn_id.idx > 0 && hvt->cn_id.val > 0 &&
	    FUNC0(&hvt->cn_id, name, hvt_cn_callback))
		goto err_free_hvt;

	return hvt;

err_free_hvt:
	FUNC9(&hvt_list_lock);
	FUNC6(&hvt->list);
	FUNC10(&hvt_list_lock);
	FUNC3(hvt);
	return NULL;
}