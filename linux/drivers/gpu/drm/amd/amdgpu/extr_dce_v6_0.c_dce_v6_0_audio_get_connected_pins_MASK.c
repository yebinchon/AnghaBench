#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int num_pins; TYPE_3__* pin; } ;
struct TYPE_5__ {TYPE_1__ audio; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_6__ {int connected; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT ; 
 int /*<<< orphan*/  PORT_CONNECTIVITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixAZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	int i;
	u32 tmp;

	for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
		tmp = FUNC1(adev->mode_info.audio.pin[i].offset,
				ixAZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT);
		if (FUNC0(tmp, AZALIA_F0_CODEC_PIN_CONTROL_RESPONSE_CONFIGURATION_DEFAULT,
					PORT_CONNECTIVITY))
			adev->mode_info.audio.pin[i].connected = false;
		else
			adev->mode_info.audio.pin[i].connected = true;
	}

}