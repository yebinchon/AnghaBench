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
typedef  scalar_t__ u32 ;
struct hgsmi_buffer_tail {int dummy; } ;
struct hgsmi_buffer_header {int dummy; } ;
typedef  int /*<<< orphan*/  offset ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u32 FUNC2(u32 offset,
			  const struct hgsmi_buffer_header *header,
			  const struct hgsmi_buffer_tail *tail)
{
	u32 checksum;

	checksum = FUNC1(0, (u8 *)&offset, sizeof(offset));
	checksum = FUNC1(checksum, (u8 *)header, sizeof(*header));
	/* 4 -> Do not checksum the checksum itself */
	checksum = FUNC1(checksum, (u8 *)tail, 4);

	return FUNC0(checksum);
}