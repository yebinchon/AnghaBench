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
typedef  int u8 ;
typedef  int u16 ;
struct dib7000p_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000p_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dib7000p_state *state, u8 drive)
{
	u16 reg;

	/* drive host bus 2, 3, 4 */
	reg = FUNC0(state, 1798) & ~((0x7) | (0x7 << 6) | (0x7 << 12));
	reg |= (drive << 12) | (drive << 6) | drive;
	FUNC1(state, 1798, reg);

	/* drive host bus 5,6 */
	reg = FUNC0(state, 1799) & ~((0x7 << 2) | (0x7 << 8));
	reg |= (drive << 8) | (drive << 2);
	FUNC1(state, 1799, reg);

	/* drive host bus 7, 8, 9 */
	reg = FUNC0(state, 1800) & ~((0x7) | (0x7 << 6) | (0x7 << 12));
	reg |= (drive << 12) | (drive << 6) | drive;
	FUNC1(state, 1800, reg);

	/* drive host bus 10, 11 */
	reg = FUNC0(state, 1801) & ~((0x7 << 2) | (0x7 << 8));
	reg |= (drive << 8) | (drive << 2);
	FUNC1(state, 1801, reg);

	/* drive host bus 12, 13, 14 */
	reg = FUNC0(state, 1802) & ~((0x7) | (0x7 << 6) | (0x7 << 12));
	reg |= (drive << 12) | (drive << 6) | drive;
	FUNC1(state, 1802, reg);

	return 0;
}