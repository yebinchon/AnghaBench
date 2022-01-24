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
struct host1x_channel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;
struct host1x_cdma {TYPE_1__ push_buffer; int /*<<< orphan*/  last_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST1X_CHANNEL_DMAPUT ; 
 struct host1x_channel* FUNC0 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct host1x_cdma *cdma)
{
	struct host1x_channel *ch = FUNC0(cdma);

	if (cdma->push_buffer.pos != cdma->last_pos) {
		FUNC1(ch, cdma->push_buffer.pos,
				 HOST1X_CHANNEL_DMAPUT);
		cdma->last_pos = cdma->push_buffer.pos;
	}
}