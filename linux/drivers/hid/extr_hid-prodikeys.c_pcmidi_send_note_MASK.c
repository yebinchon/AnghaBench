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
struct pcmidi_snd {int /*<<< orphan*/  rawmidi_in_lock; TYPE_1__* in_substream; int /*<<< orphan*/  in_triggered; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pcmidi_snd *pm,
	unsigned char status, unsigned char note, unsigned char velocity)
{
	unsigned long flags;
	unsigned char buffer[3];

	buffer[0] = status;
	buffer[1] = note;
	buffer[2] = velocity;

	FUNC1(&pm->rawmidi_in_lock, flags);

	if (!pm->in_substream)
		goto drop_note;
	if (!FUNC3(pm->in_substream->number, &pm->in_triggered))
		goto drop_note;

	FUNC0(pm->in_substream, buffer, 3);

drop_note:
	FUNC2(&pm->rawmidi_in_lock, flags);

	return;
}