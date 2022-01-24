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
typedef  int u8 ;
struct intel_hdcp_shim {int (* read_bstatus ) (struct intel_digital_port*,int*) ;int (* read_ksv_fifo ) (struct intel_digital_port*,int,int*) ;} ;
struct intel_digital_port {int dummy; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_3__ {struct intel_hdcp_shim* shim; } ;
struct intel_connector {TYPE_2__ base; TYPE_1__ hdcp; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_HDCP_KSV_LEN ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct intel_digital_port* FUNC5 (struct intel_connector*) ; 
 scalar_t__ FUNC6 (struct drm_device*,int*,int) ; 
 int FUNC7 (struct intel_digital_port*,struct intel_hdcp_shim const*) ; 
 int FUNC8 (struct intel_digital_port*,struct intel_hdcp_shim const*,int*,int,int*) ; 
 int* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int FUNC11 (struct intel_digital_port*,int*) ; 
 int FUNC12 (struct intel_digital_port*,int,int*) ; 

__attribute__((used)) static
int FUNC13(struct intel_connector *connector)
{
	struct intel_digital_port *intel_dig_port = FUNC5(connector);
	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
	struct drm_device *dev = connector->base.dev;
	u8 bstatus[2], num_downstream, *ksv_fifo;
	int ret, i, tries = 3;

	ret = FUNC7(intel_dig_port, shim);
	if (ret) {
		FUNC0("KSV list failed to become ready (%d)\n", ret);
		return ret;
	}

	ret = shim->read_bstatus(intel_dig_port, bstatus);
	if (ret)
		return ret;

	if (FUNC3(bstatus[0]) ||
	    FUNC2(bstatus[1])) {
		FUNC0("Max Topology Limit Exceeded\n");
		return -EPERM;
	}

	/*
	 * When repeater reports 0 device count, HDCP1.4 spec allows disabling
	 * the HDCP encryption. That implies that repeater can't have its own
	 * display. As there is no consumption of encrypted content in the
	 * repeater with 0 downstream devices, we are failing the
	 * authentication.
	 */
	num_downstream = FUNC4(bstatus[0]);
	if (num_downstream == 0) {
		FUNC0("Repeater with zero downstream devices\n");
		return -EINVAL;
	}

	ksv_fifo = FUNC9(DRM_HDCP_KSV_LEN, num_downstream, GFP_KERNEL);
	if (!ksv_fifo) {
		FUNC0("Out of mem: ksv_fifo\n");
		return -ENOMEM;
	}

	ret = shim->read_ksv_fifo(intel_dig_port, num_downstream, ksv_fifo);
	if (ret)
		goto err;

	if (FUNC6(dev, ksv_fifo, num_downstream)) {
		FUNC1("Revoked Ksv(s) in ksv_fifo\n");
		ret = -EPERM;
		goto err;
	}

	/*
	 * When V prime mismatches, DP Spec mandates re-read of
	 * V prime atleast twice.
	 */
	for (i = 0; i < tries; i++) {
		ret = FUNC8(intel_dig_port, shim,
						  ksv_fifo, num_downstream,
						  bstatus);
		if (!ret)
			break;
	}

	if (i == tries) {
		FUNC0("V Prime validation failed.(%d)\n", ret);
		goto err;
	}

	FUNC0("HDCP is enabled (%d downstream devices)\n",
		      num_downstream);
	ret = 0;
err:
	FUNC10(ksv_fifo);
	return ret;
}