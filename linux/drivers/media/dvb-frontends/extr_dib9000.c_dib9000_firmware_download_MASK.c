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
typedef  char u32 ;
typedef  int u16 ;
struct dib9000_state {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct dib9000_state*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib9000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 

__attribute__((used)) static int FUNC3(struct dib9000_state *state, u8 risc_id, u16 key, const u8 * code, u32 len)
{
	u16 offs;

	if (risc_id == 1)
		offs = 16;
	else
		offs = 0;

	/* config crtl reg */
	FUNC1(state, 1024 + offs, 0x000f);
	FUNC1(state, 1025 + offs, 0);
	FUNC1(state, 1031 + offs, key);

	FUNC2("going to download %dB of microcode\n", len);
	if (FUNC0(state, 1026 + offs, (u8 *) code, (u16) len) != 0) {
		FUNC2("error while downloading microcode for RISC %c\n", 'A' + risc_id);
		return -EIO;
	}

	FUNC2("Microcode for RISC %c loaded\n", 'A' + risc_id);

	return 0;
}