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
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOMD_KARTTX ; 
 int /*<<< orphan*/  IOMD_KCTRL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct serio *port, unsigned char val)
{
	while (!(FUNC1(IOMD_KCTRL) & (1 << 7)))
		FUNC0();

	FUNC2(val, IOMD_KARTTX);

	return 0;
}