#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct uverbs_attr_bundle {TYPE_7__* ufile; int /*<<< orphan*/  driver_udata; } ;
struct TYPE_10__ {int /*<<< orphan*/  cqe; int /*<<< orphan*/  cq_handle; } ;
struct ib_uverbs_ex_create_cq_resp {int /*<<< orphan*/  response_length; TYPE_3__ base; } ;
struct ib_uverbs_ex_create_cq {scalar_t__ comp_vector; scalar_t__ comp_channel; int /*<<< orphan*/  flags; int /*<<< orphan*/  cqe; int /*<<< orphan*/  user_handle; } ;
struct TYPE_11__ {int /*<<< orphan*/  id; struct ib_cq* object; int /*<<< orphan*/  user_handle; } ;
struct ib_uverbs_completion_event_file {TYPE_4__ uobject; int /*<<< orphan*/  ev_queue; int /*<<< orphan*/  async_list; int /*<<< orphan*/  comp_list; scalar_t__ async_events_reported; scalar_t__ comp_events_reported; } ;
struct ib_ucq_object {TYPE_4__ uobject; int /*<<< orphan*/  ev_queue; int /*<<< orphan*/  async_list; int /*<<< orphan*/  comp_list; scalar_t__ async_events_reported; scalar_t__ comp_events_reported; } ;
struct TYPE_9__ {int (* create_cq ) (struct ib_cq*,struct ib_cq_init_attr*,int /*<<< orphan*/ *) ;} ;
struct ib_device {TYPE_2__ ops; } ;
struct ib_cq_init_attr {scalar_t__ comp_vector; int /*<<< orphan*/  flags; int /*<<< orphan*/  cqe; } ;
struct TYPE_12__ {int /*<<< orphan*/  type; } ;
struct ib_cq {TYPE_6__ res; int /*<<< orphan*/  cqe; int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * cq_context; int /*<<< orphan*/  event_handler; int /*<<< orphan*/  comp_handler; TYPE_4__* uobject; struct ib_device* device; } ;
typedef  int /*<<< orphan*/  resp ;
struct TYPE_13__ {TYPE_1__* device; } ;
struct TYPE_8__ {scalar_t__ num_comp_vectors; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_uverbs_completion_event_file* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ib_uverbs_completion_event_file*) ; 
 int FUNC3 (struct ib_uverbs_completion_event_file*) ; 
 int /*<<< orphan*/  RDMA_RESTRACK_CQ ; 
 int /*<<< orphan*/  UVERBS_OBJECT_CQ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_cq ; 
 int /*<<< orphan*/  FUNC5 (struct ib_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_uverbs_comp_handler ; 
 int /*<<< orphan*/  ib_uverbs_cq_event_handler ; 
 struct ib_uverbs_completion_event_file* FUNC6 (scalar_t__,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,struct ib_uverbs_completion_event_file*,struct ib_uverbs_completion_event_file*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_uverbs_ex_create_cq_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 struct ib_cq* FUNC11 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ib_cq*,struct ib_cq_init_attr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct uverbs_attr_bundle*,struct ib_device**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,struct uverbs_attr_bundle*) ; 
 int FUNC15 (TYPE_4__*,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC16 (struct uverbs_attr_bundle*) ; 
 int FUNC17 (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_cq_resp*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct uverbs_attr_bundle*,int) ; 

__attribute__((used)) static struct ib_ucq_object *FUNC19(struct uverbs_attr_bundle *attrs,
				       struct ib_uverbs_ex_create_cq *cmd)
{
	struct ib_ucq_object           *obj;
	struct ib_uverbs_completion_event_file    *ev_file = NULL;
	struct ib_cq                   *cq;
	int                             ret;
	struct ib_uverbs_ex_create_cq_resp resp;
	struct ib_cq_init_attr attr = {};
	struct ib_device *ib_dev;

	if (cmd->comp_vector >= attrs->ufile->device->num_comp_vectors)
		return FUNC0(-EINVAL);

	obj = (struct ib_ucq_object *)FUNC13(UVERBS_OBJECT_CQ, attrs,
						 &ib_dev);
	if (FUNC2(obj))
		return obj;

	if (cmd->comp_channel >= 0) {
		ev_file = FUNC6(cmd->comp_channel, attrs);
		if (FUNC2(ev_file)) {
			ret = FUNC3(ev_file);
			goto err;
		}
	}

	obj->uobject.user_handle = cmd->user_handle;
	obj->comp_events_reported  = 0;
	obj->async_events_reported = 0;
	FUNC1(&obj->comp_list);
	FUNC1(&obj->async_list);

	attr.cqe = cmd->cqe;
	attr.comp_vector = cmd->comp_vector;
	attr.flags = cmd->flags;

	cq = FUNC11(ib_dev, ib_cq);
	if (!cq) {
		ret = -ENOMEM;
		goto err_file;
	}
	cq->device        = ib_dev;
	cq->uobject       = &obj->uobject;
	cq->comp_handler  = ib_uverbs_comp_handler;
	cq->event_handler = ib_uverbs_cq_event_handler;
	cq->cq_context    = ev_file ? &ev_file->ev_queue : NULL;
	FUNC4(&cq->usecnt, 0);

	ret = ib_dev->ops.create_cq(cq, &attr, &attrs->driver_udata);
	if (ret)
		goto err_free;

	obj->uobject.object = cq;
	FUNC9(&resp, 0, sizeof resp);
	resp.base.cq_handle = obj->uobject.id;
	resp.base.cqe       = cq->cqe;
	resp.response_length = FUNC18(attrs, sizeof(resp));

	cq->res.type = RDMA_RESTRACK_CQ;
	FUNC10(&cq->res);

	ret = FUNC17(attrs, &resp, sizeof(resp));
	if (ret)
		goto err_cb;

	ret = FUNC15(&obj->uobject, attrs);
	if (ret)
		return FUNC0(ret);
	return obj;

err_cb:
	FUNC5(cq, FUNC16(attrs));
	cq = NULL;
err_free:
	FUNC8(cq);
err_file:
	if (ev_file)
		FUNC7(attrs->ufile, ev_file, obj);

err:
	FUNC14(&obj->uobject, attrs);

	return FUNC0(ret);
}