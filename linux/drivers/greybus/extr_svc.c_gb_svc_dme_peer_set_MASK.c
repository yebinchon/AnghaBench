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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct gb_svc_dme_peer_set_response {int /*<<< orphan*/  result_code; } ;
struct gb_svc_dme_peer_set_request {int /*<<< orphan*/  value; void* selector; void* attr; int /*<<< orphan*/  intf_id; } ;
struct gb_svc {int /*<<< orphan*/  dev; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  request ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  GB_SVC_TYPE_DME_PEER_SET ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_svc_dme_peer_set_request*,int,struct gb_svc_dme_peer_set_response*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct gb_svc *svc, u8 intf_id, u16 attr, u16 selector,
			u32 value)
{
	struct gb_svc_dme_peer_set_request request;
	struct gb_svc_dme_peer_set_response response;
	u16 result;
	int ret;

	request.intf_id = intf_id;
	request.attr = FUNC0(attr);
	request.selector = FUNC0(selector);
	request.value = FUNC1(value);

	ret = FUNC3(svc->connection, GB_SVC_TYPE_DME_PEER_SET,
				&request, sizeof(request),
				&response, sizeof(response));
	if (ret) {
		FUNC2(&svc->dev, "failed to set DME attribute (%u 0x%04x %u %u): %d\n",
			intf_id, attr, selector, value, ret);
		return ret;
	}

	result = FUNC4(response.result_code);
	if (result) {
		FUNC2(&svc->dev, "UniPro error while setting DME attribute (%u 0x%04x %u %u): %u\n",
			intf_id, attr, selector, value, result);
		return -EREMOTEIO;
	}

	return 0;
}