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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ib_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_header*) ; 
 int FUNC2 (struct ib_header*) ; 
 int FUNC3 (struct ib_header*) ; 
 int FUNC4 (struct ib_header*) ; 
 int FUNC5 (struct ib_header*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_header*) ; 

void FUNC7(struct ib_header *hdr, bool sc5,
			     u8 *lnh, u8 *lver, u8 *sl, u8 *sc,
			     u16 *len, u32 *dlid, u32 *slid)
{
	*lnh = FUNC2(hdr);
	*lver = FUNC3(hdr);
	*sl = FUNC5(hdr);
	*sc = FUNC4(hdr) | (sc5 << 4);
	*len = FUNC1(hdr);
	*dlid = FUNC0(hdr);
	*slid = FUNC6(hdr);
}