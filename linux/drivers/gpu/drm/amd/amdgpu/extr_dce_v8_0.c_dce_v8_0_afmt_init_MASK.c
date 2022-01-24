#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_dig; TYPE_2__** afmt; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct amdgpu_afmt {int dummy; } ;
struct TYPE_5__ {int id; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * dig_offsets ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev)
{
	int i;

	for (i = 0; i < adev->mode_info.num_dig; i++)
		adev->mode_info.afmt[i] = NULL;

	/* DCE8 has audio blocks tied to DIG encoders */
	for (i = 0; i < adev->mode_info.num_dig; i++) {
		adev->mode_info.afmt[i] = FUNC1(sizeof(struct amdgpu_afmt), GFP_KERNEL);
		if (adev->mode_info.afmt[i]) {
			adev->mode_info.afmt[i]->offset = dig_offsets[i];
			adev->mode_info.afmt[i]->id = i;
		} else {
			int j;
			for (j = 0; j < i; j++) {
				FUNC0(adev->mode_info.afmt[j]);
				adev->mode_info.afmt[j] = NULL;
			}
			return -ENOMEM;
		}
	}
	return 0;
}