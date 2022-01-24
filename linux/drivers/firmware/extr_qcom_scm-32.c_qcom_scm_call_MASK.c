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
struct qcom_scm_response {int /*<<< orphan*/  buf_offset; int /*<<< orphan*/  is_complete; } ;
struct qcom_scm_command {void* id; void* resp_hdr_offset; void* buf_offset; void* len; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct device*,struct qcom_scm_command*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_scm_command*) ; 
 struct qcom_scm_command* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct qcom_scm_response* FUNC12 (struct qcom_scm_command*) ; 
 void* FUNC13 (struct qcom_scm_command*) ; 
 void const* FUNC14 (struct qcom_scm_response*) ; 
 int /*<<< orphan*/  qcom_scm_lock ; 
 int FUNC15 (int) ; 
 int FUNC16 (scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct device *dev, u32 svc_id, u32 cmd_id,
			 const void *cmd_buf, size_t cmd_len, void *resp_buf,
			 size_t resp_len)
{
	int ret;
	struct qcom_scm_command *cmd;
	struct qcom_scm_response *rsp;
	size_t alloc_len = sizeof(*cmd) + cmd_len + sizeof(*rsp) + resp_len;
	dma_addr_t cmd_phys;

	cmd = FUNC7(FUNC0(alloc_len), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->len = FUNC1(alloc_len);
	cmd->buf_offset = FUNC1(sizeof(*cmd));
	cmd->resp_hdr_offset = FUNC1(sizeof(*cmd) + cmd_len);

	cmd->id = FUNC1((svc_id << 10) | cmd_id);
	if (cmd_buf)
		FUNC9(FUNC13(cmd), cmd_buf, cmd_len);

	rsp = FUNC12(cmd);

	cmd_phys = FUNC2(dev, cmd, alloc_len, DMA_TO_DEVICE);
	if (FUNC3(dev, cmd_phys)) {
		FUNC6(cmd);
		return -ENOMEM;
	}

	FUNC10(&qcom_scm_lock);
	ret = FUNC16(cmd_phys);
	if (ret < 0)
		ret = FUNC15(ret);
	FUNC11(&qcom_scm_lock);
	if (ret)
		goto out;

	do {
		FUNC4(dev, cmd_phys + sizeof(*cmd) + cmd_len,
					sizeof(*rsp), DMA_FROM_DEVICE);
	} while (!rsp->is_complete);

	if (resp_buf) {
		FUNC4(dev, cmd_phys + sizeof(*cmd) + cmd_len +
					FUNC8(rsp->buf_offset),
					resp_len, DMA_FROM_DEVICE);
		FUNC9(resp_buf, FUNC14(rsp),
		       resp_len);
	}
out:
	FUNC5(dev, cmd_phys, alloc_len, DMA_TO_DEVICE);
	FUNC6(cmd);
	return ret;
}