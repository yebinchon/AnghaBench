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
struct pcmidi_snd {scalar_t__ card; TYPE_2__* pk; } ;
struct TYPE_4__ {TYPE_1__* hdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmidi_snd*) ; 
 int /*<<< orphan*/  sysfs_device_attr_channel ; 
 int /*<<< orphan*/  sysfs_device_attr_octave ; 
 int /*<<< orphan*/  sysfs_device_attr_sustain ; 

__attribute__((used)) static int FUNC4(struct pcmidi_snd *pm)
{
	if (pm->card) {
		FUNC3(pm);

		FUNC0(&pm->pk->hdev->dev,
			sysfs_device_attr_channel);
		FUNC0(&pm->pk->hdev->dev,
			sysfs_device_attr_sustain);
		FUNC0(&pm->pk->hdev->dev,
			sysfs_device_attr_octave);

		FUNC1(pm->card);
		FUNC2(pm->card);
	}

	return 0;
}