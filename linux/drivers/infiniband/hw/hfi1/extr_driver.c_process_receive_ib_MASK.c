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
struct hfi1_packet {int /*<<< orphan*/  rhf; } ;

/* Variables and functions */
 int RHF_RCV_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_packet*) ; 
 scalar_t__ FUNC3 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_packet*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hfi1_packet *packet)
{
	if (FUNC3(packet))
		return RHF_RCV_CONTINUE;

	if (FUNC6(FUNC1(packet)))
		return RHF_RCV_CONTINUE;

	FUNC5(packet);

	if (FUNC6(FUNC4(packet->rhf))) {
		FUNC0(packet);
		return RHF_RCV_CONTINUE;
	}

	FUNC2(packet);
	return RHF_RCV_CONTINUE;
}