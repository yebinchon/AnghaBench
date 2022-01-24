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
struct ipu_di {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct ipu_di*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_di*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ipu_di *di, int wave_gen, int di_pin,
		int set, int up, int down)
{
	u32 reg;

	reg = FUNC2(di, FUNC0(wave_gen));
	reg &= ~(0x3 << (di_pin * 2));
	reg |= set << (di_pin * 2);
	FUNC3(di, reg, FUNC0(wave_gen));

	FUNC3(di, (down << 16) | up, FUNC1(wave_gen, set));
}