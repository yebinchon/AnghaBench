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
struct fw_packet {int dummy; } ;
struct fw_ohci {int /*<<< orphan*/  at_response_ctx; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fw_packet*) ; 
 struct fw_ohci* FUNC1 (struct fw_card*) ; 

__attribute__((used)) static void FUNC2(struct fw_card *card, struct fw_packet *packet)
{
	struct fw_ohci *ohci = FUNC1(card);

	FUNC0(&ohci->at_response_ctx, packet);
}