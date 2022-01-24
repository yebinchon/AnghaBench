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
struct fw_card {int broadcast_channel_allocated; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_device_set_broadcast_channel ; 
 int /*<<< orphan*/  FUNC1 (struct fw_card*,int,unsigned long long,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_card*,char*) ; 

__attribute__((used)) static void FUNC3(struct fw_card *card, int generation)
{
	int channel, bandwidth = 0;

	if (!card->broadcast_channel_allocated) {
		FUNC1(card, generation, 1ULL << 31,
				       &channel, &bandwidth, true);
		if (channel != 31) {
			FUNC2(card, "failed to allocate broadcast channel\n");
			return;
		}
		card->broadcast_channel_allocated = true;
	}

	FUNC0(card->device, (void *)(long)generation,
			      fw_device_set_broadcast_channel);
}