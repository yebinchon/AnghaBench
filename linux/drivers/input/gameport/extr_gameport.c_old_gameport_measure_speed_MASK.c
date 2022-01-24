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
struct gameport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  loops_per_jiffy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  GAMEPORT_MODE_RAW ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int HZ ; 
 TYPE_1__ cpu_info ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 scalar_t__ FUNC3 (struct gameport*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gameport*) ; 
 unsigned int jiffies ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned long FUNC7 () ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 

__attribute__((used)) static int FUNC10(struct gameport *gameport)
{
#if defined(__i386__)

	unsigned int i, t, t1, t2, t3, tx;
	unsigned long flags;

	if (gameport_open(gameport, NULL, GAMEPORT_MODE_RAW))
		return 0;

	tx = 1 << 30;

	for(i = 0; i < 50; i++) {
		local_irq_save(flags);
		GET_TIME(t1);
		for (t = 0; t < 50; t++) gameport_read(gameport);
		GET_TIME(t2);
		GET_TIME(t3);
		local_irq_restore(flags);
		udelay(i * 10);
		if ((t = DELTA(t2,t1) - DELTA(t3,t2)) < tx) tx = t;
	}

	gameport_close(gameport);
	return 59659 / (tx < 1 ? 1 : tx);

#elif defined (__x86_64__)

	unsigned int i, t;
	unsigned long tx, t1, t2, flags;

	if (FUNC3(gameport, NULL, GAMEPORT_MODE_RAW))
		return 0;

	tx = 1 << 30;

	for(i = 0; i < 50; i++) {
		FUNC6(flags);
		t1 = FUNC7();
		for (t = 0; t < 50; t++) FUNC4(gameport);
		t2 = FUNC7();
		FUNC5(flags);
		FUNC9(i * 10);
		if (t2 - t1 < tx) tx = t2 - t1;
	}

	FUNC2(gameport);
	return (FUNC8(cpu_info.loops_per_jiffy) *
		(unsigned long)HZ / (1000 / 50)) / (tx < 1 ? 1 : tx);

#else

	unsigned int j, t = 0;

	if (gameport_open(gameport, NULL, GAMEPORT_MODE_RAW))
		return 0;

	j = jiffies; while (j == jiffies);
	j = jiffies; while (j == jiffies) { t++; gameport_read(gameport); }

	gameport_close(gameport);
	return t * HZ / 1000;

#endif
}