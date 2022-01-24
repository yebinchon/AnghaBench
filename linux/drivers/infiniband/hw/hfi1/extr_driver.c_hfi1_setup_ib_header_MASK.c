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
struct hfi1_packet {int hlen; struct hfi1_ib_message_header* hdr; scalar_t__ rhf_addr; int /*<<< orphan*/  rcd; } ;
struct hfi1_ib_message_header {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct hfi1_packet *packet)
{
	packet->hdr = (struct hfi1_ib_message_header *)
			FUNC0(packet->rcd,
					   packet->rhf_addr);
	packet->hlen = (u8 *)packet->rhf_addr - (u8 *)packet->hdr;
}