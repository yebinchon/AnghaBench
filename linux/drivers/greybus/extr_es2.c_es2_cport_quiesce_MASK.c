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
typedef  unsigned int u16 ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {TYPE_1__* usb_dev; } ;
struct device {int dummy; } ;
struct arpc_cport_quiesce_req {void* timeout; void* peer_space; void* cport_id; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPC_TYPE_CPORT_QUIESCE ; 
 int EINVAL ; 
 scalar_t__ ES2_ARPC_CPORT_TIMEOUT ; 
 size_t U16_MAX ; 
 int FUNC0 (struct es2_ap_dev*,int /*<<< orphan*/ ,struct arpc_cport_quiesce_req*,int,int*,scalar_t__) ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,int,int) ; 
 struct es2_ap_dev* FUNC3 (struct gb_host_device*) ; 

__attribute__((used)) static int FUNC4(struct gb_host_device *hd, u16 cport_id,
			     size_t peer_space, unsigned int timeout)
{
	struct es2_ap_dev *es2 = FUNC3(hd);
	struct device *dev = &es2->usb_dev->dev;
	struct arpc_cport_quiesce_req req;
	int result;
	int ret;

	if (peer_space > U16_MAX)
		return -EINVAL;

	if (timeout > U16_MAX)
		return -EINVAL;

	req.cport_id = FUNC1(cport_id);
	req.peer_space = FUNC1(peer_space);
	req.timeout = FUNC1(timeout);
	ret = FUNC0(es2, ARPC_TYPE_CPORT_QUIESCE, &req, sizeof(req),
			&result, ES2_ARPC_CPORT_TIMEOUT + timeout);
	if (ret) {
		FUNC2(dev, "failed to quiesce cport %u: %d (%d)\n",
			cport_id, ret, result);
		return ret;
	}

	return 0;
}