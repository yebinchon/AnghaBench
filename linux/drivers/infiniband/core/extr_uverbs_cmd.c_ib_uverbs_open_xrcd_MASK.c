#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uverbs_attr_bundle {int /*<<< orphan*/  driver_udata; TYPE_1__* ufile; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; struct ib_xrcd* object; } ;
struct ib_xrcd {TYPE_3__ uobject; int /*<<< orphan*/  usecnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  tgt_qp_list; int /*<<< orphan*/  tgt_qp_mutex; struct ib_device* device; struct inode* inode; } ;
struct ib_uxrcd_object {TYPE_3__ uobject; int /*<<< orphan*/  usecnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  tgt_qp_list; int /*<<< orphan*/  tgt_qp_mutex; struct ib_device* device; struct inode* inode; } ;
struct ib_uverbs_open_xrcd_resp {int /*<<< orphan*/  xrcd_handle; } ;
struct ib_uverbs_open_xrcd {int fd; int oflags; } ;
struct ib_uverbs_device {int /*<<< orphan*/  xrcd_tree_mutex; } ;
struct TYPE_6__ {struct ib_xrcd* (* alloc_xrcd ) (struct ib_device*,int /*<<< orphan*/ *) ;} ;
struct ib_device {TYPE_2__ ops; } ;
struct fd {scalar_t__ file; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_5__ {struct ib_uverbs_device* device; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ib_xrcd*) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int FUNC2 (struct ib_xrcd*) ; 
 int /*<<< orphan*/  UVERBS_OBJECT_XRCD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fd FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct fd) ; 
 struct inode* FUNC8 (scalar_t__) ; 
 struct ib_xrcd* FUNC9 (struct ib_uverbs_device*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_xrcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_uverbs_open_xrcd_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct ib_xrcd* FUNC15 (struct ib_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct uverbs_attr_bundle*,struct ib_device**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,struct uverbs_attr_bundle*) ; 
 int FUNC18 (TYPE_3__*,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC19 (struct uverbs_attr_bundle*) ; 
 int FUNC20 (struct uverbs_attr_bundle*,struct ib_uverbs_open_xrcd*,int) ; 
 int FUNC21 (struct uverbs_attr_bundle*,struct ib_uverbs_open_xrcd_resp*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ib_uverbs_device*,struct inode*) ; 
 int FUNC23 (struct ib_uverbs_device*,struct inode*,struct ib_xrcd*) ; 

__attribute__((used)) static int FUNC24(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_device *ibudev = attrs->ufile->device;
	struct ib_uverbs_open_xrcd	cmd;
	struct ib_uverbs_open_xrcd_resp	resp;
	struct ib_uxrcd_object         *obj;
	struct ib_xrcd                 *xrcd = NULL;
	struct fd			f = {NULL, 0};
	struct inode                   *inode = NULL;
	int				ret = 0;
	int				new_xrcd = 0;
	struct ib_device *ib_dev;

	ret = FUNC20(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	FUNC13(&ibudev->xrcd_tree_mutex);

	if (cmd.fd != -1) {
		/* search for file descriptor */
		f = FUNC6(cmd.fd);
		if (!f.file) {
			ret = -EBADF;
			goto err_tree_mutex_unlock;
		}

		inode = FUNC8(f.file);
		xrcd = FUNC9(ibudev, inode);
		if (!xrcd && !(cmd.oflags & O_CREAT)) {
			/* no file descriptor. Need CREATE flag */
			ret = -EAGAIN;
			goto err_tree_mutex_unlock;
		}

		if (xrcd && cmd.oflags & O_EXCL) {
			ret = -EINVAL;
			goto err_tree_mutex_unlock;
		}
	}

	obj = (struct ib_uxrcd_object *)FUNC16(UVERBS_OBJECT_XRCD, attrs,
						   &ib_dev);
	if (FUNC1(obj)) {
		ret = FUNC2(obj);
		goto err_tree_mutex_unlock;
	}

	if (!xrcd) {
		xrcd = ib_dev->ops.alloc_xrcd(ib_dev, &attrs->driver_udata);
		if (FUNC1(xrcd)) {
			ret = FUNC2(xrcd);
			goto err;
		}

		xrcd->inode   = inode;
		xrcd->device  = ib_dev;
		FUNC5(&xrcd->usecnt, 0);
		FUNC12(&xrcd->tgt_qp_mutex);
		FUNC0(&xrcd->tgt_qp_list);
		new_xrcd = 1;
	}

	FUNC5(&obj->refcnt, 0);
	obj->uobject.object = xrcd;
	FUNC11(&resp, 0, sizeof resp);
	resp.xrcd_handle = obj->uobject.id;

	if (inode) {
		if (new_xrcd) {
			/* create new inode/xrcd table entry */
			ret = FUNC23(ibudev, inode, xrcd);
			if (ret)
				goto err_dealloc_xrcd;
		}
		FUNC4(&xrcd->usecnt);
	}

	ret = FUNC21(attrs, &resp, sizeof(resp));
	if (ret)
		goto err_copy;

	if (f.file)
		FUNC7(f);

	FUNC14(&ibudev->xrcd_tree_mutex);

	return FUNC18(&obj->uobject, attrs);

err_copy:
	if (inode) {
		if (new_xrcd)
			FUNC22(ibudev, inode);
		FUNC3(&xrcd->usecnt);
	}

err_dealloc_xrcd:
	FUNC10(xrcd, FUNC19(attrs));

err:
	FUNC17(&obj->uobject, attrs);

err_tree_mutex_unlock:
	if (f.file)
		FUNC7(f);

	FUNC14(&ibudev->xrcd_tree_mutex);

	return ret;
}