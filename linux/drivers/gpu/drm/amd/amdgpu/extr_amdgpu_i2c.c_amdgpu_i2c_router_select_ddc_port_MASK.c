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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_addr; int /*<<< orphan*/  ddc_mux_state; int /*<<< orphan*/  ddc_mux_control_pin; int /*<<< orphan*/  ddc_valid; } ;
struct amdgpu_connector {TYPE_1__ router; int /*<<< orphan*/  router_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC2(const struct amdgpu_connector *amdgpu_connector)
{
	u8 val;

	if (!amdgpu_connector->router.ddc_valid)
		return;

	if (!amdgpu_connector->router_bus)
		return;

	FUNC0(amdgpu_connector->router_bus,
			    amdgpu_connector->router.i2c_addr,
			    0x3, &val);
	val &= ~amdgpu_connector->router.ddc_mux_control_pin;
	FUNC1(amdgpu_connector->router_bus,
			    amdgpu_connector->router.i2c_addr,
			    0x3, val);
	FUNC0(amdgpu_connector->router_bus,
			    amdgpu_connector->router.i2c_addr,
			    0x1, &val);
	val &= ~amdgpu_connector->router.ddc_mux_control_pin;
	val |= amdgpu_connector->router.ddc_mux_state;
	FUNC1(amdgpu_connector->router_bus,
			    amdgpu_connector->router.i2c_addr,
			    0x1, val);
}