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
typedef  int u32 ;
struct intel_guc_ct_channel {int /*<<< orphan*/  enabled; struct intel_guc_ct_buffer* ctbs; } ;
struct intel_guc_ct_buffer {struct guc_ct_buffer_desc* desc; } ;
struct intel_guc_ct {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_requests; } ;
struct guc_ct_buffer_desc {int dummy; } ;
struct ct_request {int fence; int status; int response_len; int* response_buf; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 size_t CTB_SEND ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GUC_CT_MSG_LEN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc_ct*) ; 
 int FUNC5 (struct intel_guc_ct_buffer*,int const*,int,int,int) ; 
 int FUNC6 (struct intel_guc_ct_channel*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (struct ct_request*,int*) ; 
 int FUNC14 (struct guc_ct_buffer_desc*,int,int*) ; 

__attribute__((used)) static int FUNC15(struct intel_guc_ct *ct,
		     struct intel_guc_ct_channel *ctch,
		     const u32 *action,
		     u32 len,
		     u32 *response_buf,
		     u32 response_buf_size,
		     u32 *status)
{
	struct intel_guc_ct_buffer *ctb = &ctch->ctbs[CTB_SEND];
	struct guc_ct_buffer_desc *desc = ctb->desc;
	struct ct_request request;
	unsigned long flags;
	u32 fence;
	int err;

	FUNC0(!ctch->enabled);
	FUNC0(!len);
	FUNC0(len & ~GUC_CT_MSG_LEN_MASK);
	FUNC0(!response_buf && response_buf_size);

	fence = FUNC6(ctch);
	request.fence = fence;
	request.status = 0;
	request.response_len = response_buf_size;
	request.response_buf = response_buf;

	FUNC10(&ct->lock, flags);
	FUNC8(&request.link, &ct->pending_requests);
	FUNC11(&ct->lock, flags);

	err = FUNC5(ctb, action, len, fence, !!response_buf);
	if (FUNC12(err))
		goto unlink;

	FUNC7(FUNC4(ct));

	if (response_buf)
		err = FUNC13(&request, status);
	else
		err = FUNC14(desc, fence, status);
	if (FUNC12(err))
		goto unlink;

	if (!FUNC1(*status)) {
		err = -EIO;
		goto unlink;
	}

	if (response_buf) {
		/* There shall be no data in the status */
		FUNC3(FUNC2(request.status));
		/* Return actual response len */
		err = request.response_len;
	} else {
		/* There shall be no response payload */
		FUNC3(request.response_len);
		/* Return data decoded from the status dword */
		err = FUNC2(*status);
	}

unlink:
	FUNC10(&ct->lock, flags);
	FUNC9(&request.link);
	FUNC11(&ct->lock, flags);

	return err;
}