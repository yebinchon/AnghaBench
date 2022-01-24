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
typedef  int /*<<< orphan*/  u32 ;
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct gameport*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct gameport* gameport, int sendflags, int sendcode, u32 *packet)
{
	int status;
	unsigned long flags;

	FUNC1(flags);
	status = FUNC2(gameport, sendflags, sendcode, packet);
	FUNC0(flags);

	return status;
}