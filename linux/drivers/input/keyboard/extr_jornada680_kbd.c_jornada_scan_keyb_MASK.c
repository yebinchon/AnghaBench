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

/* Variables and functions */
 int /*<<< orphan*/  PCDR ; 
 int /*<<< orphan*/  PDCR ; 
 int /*<<< orphan*/  PDDR ; 
 int /*<<< orphan*/  PECR ; 
 int /*<<< orphan*/  PEDR ; 
 int /*<<< orphan*/  PFDR ; 
 int /*<<< orphan*/  PGDR ; 
 int /*<<< orphan*/  PHDR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(unsigned char *s)
{
	int i;
	unsigned short ec_static, dc_static; /* = UINT16_t */
	unsigned char matrix_switch[] = {
		0xfd, 0xff,   /* PTD1 PD(1) */
		0xdf, 0xff,   /* PTD5 PD(5) */
		0x7f, 0xff,   /* PTD7 PD(7) */
		0xff, 0xfe,   /* PTE0 PE(0) */
		0xff, 0xfd,   /* PTE1 PE(1) */
		0xff, 0xf7,   /* PTE3 PE(3) */
		0xff, 0xbf,   /* PTE6 PE(6) */
		0xff, 0x7f,   /* PTE7 PE(7) */
	}, *t = matrix_switch;
	/* PD(x) :
	1.   0xcc0c & (1~(1 << (2*(x)+1)))))
	2.   (0xf0cf & 0xfffff) */
	/* PE(x) :
	1.   0xcc0c & 0xffff
	2.   0xf0cf & (1~(1 << (2*(x)+1))))) */
	unsigned short matrix_PDE[] = {
		0xcc04, 0xf0cf,  /* PD(1) */
		0xc40c, 0xf0cf,	 /* PD(5) */
		0x4c0c, 0xf0cf,  /* PD(7) */
		0xcc0c, 0xf0cd,  /* PE(0) */
		0xcc0c, 0xf0c7,	 /* PE(1) */
		0xcc0c, 0xf04f,  /* PE(3) */
		0xcc0c, 0xd0cf,	 /* PE(6) */
		0xcc0c, 0x70cf,	 /* PE(7) */
	}, *y = matrix_PDE;

	/* Save these control reg bits */
	dc_static = (FUNC1(PDCR) & (~0xcc0c));
	ec_static = (FUNC1(PECR) & (~0xf0cf));

	for (i = 0; i < 8; i++) {
		/* disable output for all but the one we want to scan */
		FUNC3((dc_static | *y++), PDCR);
		FUNC3((ec_static | *y++), PECR);
		FUNC4(5);

		/* Get scanline row */
		FUNC2(*t++, PDDR);
		FUNC2(*t++, PEDR);
		FUNC4(50);

		/* Read data */
		*s++ = FUNC0(PCDR);
		*s++ = FUNC0(PFDR);
	}
	/* Scan no lines */
	FUNC2(0xff, PDDR);
	FUNC2(0xff, PEDR);

	/* Enable all scanlines */
	FUNC3((dc_static | (0x5555 & 0xcc0c)),PDCR);
	FUNC3((ec_static | (0x5555 & 0xf0cf)),PECR);

	/* Ignore extra keys and events */
	*s++ = FUNC0(PGDR);
	*s++ = FUNC0(PHDR);
}