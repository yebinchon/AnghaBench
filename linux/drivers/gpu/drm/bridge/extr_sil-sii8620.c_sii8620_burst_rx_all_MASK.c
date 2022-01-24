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
struct TYPE_2__ {int rx_count; int /*<<< orphan*/  r_size; int /*<<< orphan*/ * rx_buf; } ;
struct sii8620 {TYPE_1__ burst; } ;

/* Variables and functions */
#define  MHL_BURST_ID_BLK_RCV_BUFFER_INFO 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct sii8620 *ctx)
{
	u8 *d = ctx->burst.rx_buf;
	int count = ctx->burst.rx_count;

	while (count-- > 0) {
		int len = *d++;
		int id = FUNC0(&d[0]);

		switch (id) {
		case MHL_BURST_ID_BLK_RCV_BUFFER_INFO:
			ctx->burst.r_size = FUNC1(&d[2]);
			break;
		default:
			break;
		}
		count -= len;
		d += len;
	}
	ctx->burst.rx_count = 0;
}