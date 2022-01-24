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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hfi1_16b_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_16b_header*) ; 
 int FUNC1 (struct hfi1_16b_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_16b_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_16b_header*) ; 
 int FUNC4 (struct hfi1_16b_header*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_16b_header*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_16b_header*) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_16b_header*) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_16b_header*) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_16b_header*) ; 
 int /*<<< orphan*/  FUNC10 (struct hfi1_16b_header*) ; 

void FUNC11(struct hfi1_16b_header *hdr,
			      u8 *age, bool *becn, bool *fecn,
			      u8 *l4, u8 *rc, u8 *sc,
			      u16 *entropy, u16 *len, u16 *pkey,
			      u32 *dlid, u32 *slid)
{
	*age = FUNC0(hdr);
	*becn = FUNC1(hdr);
	*fecn = FUNC4(hdr);
	*l4 = FUNC5(hdr);
	*rc = FUNC8(hdr);
	*sc = FUNC9(hdr);
	*entropy = FUNC3(hdr);
	*len = FUNC6(hdr);
	*pkey = FUNC7(hdr);
	*dlid = FUNC2(hdr);
	*slid = FUNC10(hdr);
}