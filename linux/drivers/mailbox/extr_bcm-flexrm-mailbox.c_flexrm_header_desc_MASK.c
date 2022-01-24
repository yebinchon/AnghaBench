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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DESC_TYPE_MASK ; 
 int /*<<< orphan*/  DESC_TYPE_SHIFT ; 
 int /*<<< orphan*/  HEADER_BDCOUNT_MASK ; 
 int /*<<< orphan*/  HEADER_BDCOUNT_SHIFT ; 
 int /*<<< orphan*/  HEADER_ENDPKT_MASK ; 
 int /*<<< orphan*/  HEADER_ENDPKT_SHIFT ; 
 int /*<<< orphan*/  HEADER_FLAGS_MASK ; 
 int /*<<< orphan*/  HEADER_FLAGS_SHIFT ; 
 int /*<<< orphan*/  HEADER_OPAQUE_MASK ; 
 int /*<<< orphan*/  HEADER_OPAQUE_SHIFT ; 
 int /*<<< orphan*/  HEADER_STARTPKT_MASK ; 
 int /*<<< orphan*/  HEADER_STARTPKT_SHIFT ; 
 int /*<<< orphan*/  HEADER_TOGGLE_MASK ; 
 int /*<<< orphan*/  HEADER_TOGGLE_SHIFT ; 
 int /*<<< orphan*/  HEADER_TYPE ; 

__attribute__((used)) static u64 FUNC1(u32 toggle, u32 startpkt, u32 endpkt,
			       u32 bdcount, u32 flags, u32 opaque)
{
	u64 desc = 0;

	FUNC0(desc, HEADER_TYPE, DESC_TYPE_SHIFT, DESC_TYPE_MASK);
	FUNC0(desc, toggle, HEADER_TOGGLE_SHIFT, HEADER_TOGGLE_MASK);
	FUNC0(desc, startpkt, HEADER_STARTPKT_SHIFT, HEADER_STARTPKT_MASK);
	FUNC0(desc, endpkt, HEADER_ENDPKT_SHIFT, HEADER_ENDPKT_MASK);
	FUNC0(desc, bdcount, HEADER_BDCOUNT_SHIFT, HEADER_BDCOUNT_MASK);
	FUNC0(desc, flags, HEADER_FLAGS_SHIFT, HEADER_FLAGS_MASK);
	FUNC0(desc, opaque, HEADER_OPAQUE_SHIFT, HEADER_OPAQUE_MASK);

	return desc;
}