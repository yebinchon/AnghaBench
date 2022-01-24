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
struct isert_conn {void* login_req_buf; void* login_req_dma; void* login_rsp_buf; void* login_rsp_dma; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ISER_RX_PAYLOAD_SIZE ; 
 void* FUNC0 (struct ib_device*,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct isert_conn *isert_conn,
		      struct ib_device *ib_dev)
{
	int ret;

	isert_conn->login_req_buf = FUNC5(sizeof(*isert_conn->login_req_buf),
			GFP_KERNEL);
	if (!isert_conn->login_req_buf)
		return -ENOMEM;

	isert_conn->login_req_dma = FUNC0(ib_dev,
				isert_conn->login_req_buf,
				ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
	ret = FUNC1(ib_dev, isert_conn->login_req_dma);
	if (ret) {
		FUNC3("login_req_dma mapping error: %d\n", ret);
		isert_conn->login_req_dma = 0;
		goto out_free_login_req_buf;
	}

	isert_conn->login_rsp_buf = FUNC5(ISER_RX_PAYLOAD_SIZE, GFP_KERNEL);
	if (!isert_conn->login_rsp_buf) {
		ret = -ENOMEM;
		goto out_unmap_login_req_buf;
	}

	isert_conn->login_rsp_dma = FUNC0(ib_dev,
					isert_conn->login_rsp_buf,
					ISER_RX_PAYLOAD_SIZE, DMA_TO_DEVICE);
	ret = FUNC1(ib_dev, isert_conn->login_rsp_dma);
	if (ret) {
		FUNC3("login_rsp_dma mapping error: %d\n", ret);
		isert_conn->login_rsp_dma = 0;
		goto out_free_login_rsp_buf;
	}

	return 0;

out_free_login_rsp_buf:
	FUNC4(isert_conn->login_rsp_buf);
out_unmap_login_req_buf:
	FUNC2(ib_dev, isert_conn->login_req_dma,
			    ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
out_free_login_req_buf:
	FUNC4(isert_conn->login_req_buf);
	return ret;
}