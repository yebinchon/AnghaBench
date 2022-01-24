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
typedef  int u32 ;
struct ioatdma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * chanerr_str ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ioatdma_chan*) ; 

__attribute__((used)) static void FUNC3(struct ioatdma_chan *ioat_chan, u32 chanerr)
{
	int i;

	for (i = 0; i < FUNC0(chanerr_str); i++) {
		if ((chanerr >> i) & 1) {
			FUNC1(FUNC2(ioat_chan), "Err(%d): %s\n",
				i, chanerr_str[i]);
		}
	}
}