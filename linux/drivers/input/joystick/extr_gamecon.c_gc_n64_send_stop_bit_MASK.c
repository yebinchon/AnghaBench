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
struct parport {int dummy; } ;
struct gc {TYPE_1__* pd; } ;
struct TYPE_2__ {struct parport* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC_N64_DWS ; 
 unsigned char GC_N64_POWER_W ; 
 int GC_N64_STOP_BIT ; 
 int GC_N64_STOP_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct parport*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gc *gc, unsigned char target)
{
	struct parport *port = gc->pd->port;
	int i;

	for (i = 0; i < GC_N64_STOP_LENGTH; i++) {
		unsigned char data = (GC_N64_STOP_BIT >> i) & 1 ? target : 0;
		FUNC0(port, GC_N64_POWER_W | data);
		FUNC1(GC_N64_DWS);
	}
}