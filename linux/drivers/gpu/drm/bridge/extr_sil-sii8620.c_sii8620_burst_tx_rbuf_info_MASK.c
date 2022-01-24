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
struct sii8620 {int dummy; } ;
struct mhl_burst_blk_rcv_buffer_info {int /*<<< orphan*/  size; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MHL_BURST_ID_BLK_RCV_BUFFER_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mhl_burst_blk_rcv_buffer_info* FUNC2 (struct sii8620*,int) ; 

__attribute__((used)) static void FUNC3(struct sii8620 *ctx, int size)
{
	struct mhl_burst_blk_rcv_buffer_info *d =
		FUNC2(ctx, sizeof(*d));
	if (!d)
		return;

	d->id = FUNC0(MHL_BURST_ID_BLK_RCV_BUFFER_INFO);
	d->size = FUNC1(size);
}