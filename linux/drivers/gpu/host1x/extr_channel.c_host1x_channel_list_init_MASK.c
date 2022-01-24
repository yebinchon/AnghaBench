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
struct host1x_channel_list {void* allocated_channels; void* channels; } ;
struct host1x_channel {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned int) ; 
 void* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

int FUNC4(struct host1x_channel_list *chlist,
			     unsigned int num_channels)
{
	chlist->channels = FUNC2(num_channels, sizeof(struct host1x_channel),
				   GFP_KERNEL);
	if (!chlist->channels)
		return -ENOMEM;

	chlist->allocated_channels =
		FUNC2(FUNC0(num_channels), sizeof(unsigned long),
			GFP_KERNEL);
	if (!chlist->allocated_channels) {
		FUNC3(chlist->channels);
		return -ENOMEM;
	}

	FUNC1(chlist->allocated_channels, num_channels);

	return 0;
}