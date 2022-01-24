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
struct pk_device {struct pk_device* pm; } ;
struct pcmidi_snd {struct pcmidi_snd* pm; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 struct pk_device* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pk_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pk_device*) ; 

__attribute__((used)) static void FUNC4(struct hid_device *hdev)
{
	struct pk_device *pk = FUNC0(hdev);
	struct pcmidi_snd *pm;

	pm = pk->pm;
	if (pm) {
		FUNC3(pm);
		FUNC2(pm);
	}

	FUNC1(hdev);

	FUNC2(pk);
}