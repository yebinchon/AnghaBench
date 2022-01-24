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
struct opa_vnic_ctrl_port {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_ctrl_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct opa_vnic_ctrl_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_ctrl_port*) ; 

__attribute__((used)) static void FUNC4(struct ib_device *device,
				  void *client_data)
{
	struct opa_vnic_ctrl_port *cport = client_data;

	if (!cport)
		return;

	FUNC0("removing VNIC client\n");
	FUNC2(cport, false);
	FUNC3(cport);
	FUNC1(cport);
}