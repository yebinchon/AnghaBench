#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
struct TYPE_3__ {struct device* dev; } ;
struct s10_priv {TYPE_2__* svc_bufs; TYPE_1__ client; } ;
struct fpga_manager {struct s10_priv* priv; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; void* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_RECONFIG_DATA_SUBMIT ; 
 int ENOBUFS ; 
 size_t NUM_SVC_BUFS ; 
 int /*<<< orphan*/  SVC_BUF_LOCK ; 
 size_t SVC_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,size_t) ; 
 int FUNC3 (struct s10_priv*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fpga_manager *mgr, const char *buf, size_t count)
{
	struct s10_priv *priv = mgr->priv;
	struct device *dev = priv->client.dev;
	void *svc_buf;
	size_t xfer_sz;
	int ret;
	uint i;

	/* get/lock a buffer that that's not being used */
	for (i = 0; i < NUM_SVC_BUFS; i++)
		if (!FUNC4(SVC_BUF_LOCK,
					   &priv->svc_bufs[i].lock))
			break;

	if (i == NUM_SVC_BUFS)
		return -ENOBUFS;

	xfer_sz = count < SVC_BUF_SIZE ? count : SVC_BUF_SIZE;

	svc_buf = priv->svc_bufs[i].buf;
	FUNC2(svc_buf, buf, xfer_sz);
	ret = FUNC3(priv, COMMAND_RECONFIG_DATA_SUBMIT,
			       svc_buf, xfer_sz);
	if (ret < 0) {
		FUNC1(dev,
			"Error while sending data to service layer (%d)", ret);
		FUNC0(SVC_BUF_LOCK, &priv->svc_bufs[i].lock);
		return ret;
	}

	return xfer_sz;
}