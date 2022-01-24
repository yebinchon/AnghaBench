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
struct intel_hdcp {TYPE_1__* shim; } ;
struct intel_digital_port {int dummy; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;
struct hdcp2_ske_send_eks {int dummy; } ;
typedef  int /*<<< orphan*/  send_eks ;
struct TYPE_2__ {int (* write_2_2_msg ) (struct intel_digital_port*,struct hdcp2_ske_send_eks*,int) ;} ;

/* Variables and functions */
 struct intel_digital_port* FUNC0 (struct intel_connector*) ; 
 int FUNC1 (struct intel_connector*,struct hdcp2_ske_send_eks*) ; 
 int FUNC2 (struct intel_digital_port*,struct hdcp2_ske_send_eks*,int) ; 

__attribute__((used)) static int FUNC3(struct intel_connector *connector)
{
	struct intel_digital_port *intel_dig_port = FUNC0(connector);
	struct intel_hdcp *hdcp = &connector->hdcp;
	struct hdcp2_ske_send_eks send_eks;
	int ret;

	ret = FUNC1(connector, &send_eks);
	if (ret < 0)
		return ret;

	ret = hdcp->shim->write_2_2_msg(intel_dig_port, &send_eks,
					sizeof(send_eks));
	if (ret < 0)
		return ret;

	return 0;
}