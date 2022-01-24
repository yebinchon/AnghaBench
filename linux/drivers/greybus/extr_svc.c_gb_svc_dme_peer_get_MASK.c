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
struct gb_svc_dme_peer_get_response {int /*<<< orphan*/  attr_value; int /*<<< orphan*/  result_code; } ;
struct gb_svc_dme_peer_get_request {void* selector; void* attr; int /*<<< orphan*/  intf_id; } ;
struct gb_svc {int /*<<< orphan*/  dev; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  response ;
typedef  int /*<<< orphan*/  request ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  GB_SVC_TYPE_DME_PEER_GET ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_svc_dme_peer_get_request*,int,struct gb_svc_dme_peer_get_response*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct gb_svc *svc, u8 intf_id, u16 attr, u16 selector,
			u32 *value)
{
	struct gb_svc_dme_peer_get_request request;
	struct gb_svc_dme_peer_get_response response;
	u16 result;
	int ret;

	request.intf_id = intf_id;
	request.attr = FUNC0(attr);
	request.selector = FUNC0(selector);

	ret = FUNC2(svc->connection, GB_SVC_TYPE_DME_PEER_GET,
				&request, sizeof(request),
				&response, sizeof(response));
	if (ret) {
		FUNC1(&svc->dev, "failed to get DME attribute (%u 0x%04x %u): %d\n",
			intf_id, attr, selector, ret);
		return ret;
	}

	result = FUNC3(response.result_code);
	if (result) {
		FUNC1(&svc->dev, "UniPro error while getting DME attribute (%u 0x%04x %u): %u\n",
			intf_id, attr, selector, result);
		return -EREMOTEIO;
	}

	if (value)
		*value = FUNC4(response.attr_value);

	return 0;
}