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
struct mod_vrr_params {int dummy; } ;
struct dc_info_packet {int valid; } ;
typedef  enum signal_type { ____Placeholder_signal_type } signal_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,struct dc_info_packet*) ; 
 int /*<<< orphan*/  FUNC1 (struct mod_vrr_params const*,struct dc_info_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct dc_info_packet*,unsigned int*) ; 

__attribute__((used)) static void FUNC3(enum signal_type signal,
		const struct mod_vrr_params *vrr,
		struct dc_info_packet *infopacket)
{
	/* SPD info packet for FreeSync */
	unsigned int payload_size = 0;

	FUNC2(signal, infopacket, &payload_size);
	FUNC1(vrr, infopacket);
	FUNC0(&payload_size, infopacket);

	infopacket->valid = true;
}