#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
struct seq_file {int dummy; } ;
struct cec_pin {unsigned int* error_inj; scalar_t__** error_inj_args; scalar_t__ tx_custom_low_usecs; scalar_t__ tx_custom_high_usecs; scalar_t__ tx_custom_pulse; scalar_t__ tx_ignore_nack_until_eom; } ;
struct cec_adapter {struct cec_pin* pin; } ;
struct TYPE_2__ {char* cmd; unsigned int mode_offset; int arg_idx; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 unsigned int CEC_ERROR_INJ_MODE_MASK ; 
 scalar_t__ CEC_TIM_CUSTOM_DEFAULT ; 
 TYPE_1__* cec_error_inj_cmds ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char const*) ; 

int FUNC4(struct cec_adapter *adap, struct seq_file *sf)
{
	struct cec_pin *pin = adap->pin;
	unsigned int i, j;

	FUNC3(sf, "# Clear error injections:\n");
	FUNC3(sf, "#   clear          clear all rx and tx error injections\n");
	FUNC3(sf, "#   rx-clear       clear all rx error injections\n");
	FUNC3(sf, "#   tx-clear       clear all tx error injections\n");
	FUNC3(sf, "#   <op> clear     clear all rx and tx error injections for <op>\n");
	FUNC3(sf, "#   <op> rx-clear  clear all rx error injections for <op>\n");
	FUNC3(sf, "#   <op> tx-clear  clear all tx error injections for <op>\n");
	FUNC3(sf, "#\n");
	FUNC3(sf, "# RX error injection:\n");
	FUNC3(sf, "#   <op>[,<mode>] rx-nack              NACK the message instead of sending an ACK\n");
	FUNC3(sf, "#   <op>[,<mode>] rx-low-drive <bit>   force a low-drive condition at this bit position\n");
	FUNC3(sf, "#   <op>[,<mode>] rx-add-byte          add a spurious byte to the received CEC message\n");
	FUNC3(sf, "#   <op>[,<mode>] rx-remove-byte       remove the last byte from the received CEC message\n");
	FUNC3(sf, "#   <op>[,<mode>] rx-arb-lost <poll>   generate a POLL message to trigger an arbitration lost\n");
	FUNC3(sf, "#\n");
	FUNC3(sf, "# TX error injection settings:\n");
	FUNC3(sf, "#   tx-ignore-nack-until-eom           ignore early NACKs until EOM\n");
	FUNC3(sf, "#   tx-custom-low-usecs <usecs>        define the 'low' time for the custom pulse\n");
	FUNC3(sf, "#   tx-custom-high-usecs <usecs>       define the 'high' time for the custom pulse\n");
	FUNC3(sf, "#   tx-custom-pulse                    transmit the custom pulse once the bus is idle\n");
	FUNC3(sf, "#\n");
	FUNC3(sf, "# TX error injection:\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-no-eom            don't set the EOM bit\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-early-eom         set the EOM bit one byte too soon\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-add-bytes <num>   append <num> (1-255) spurious bytes to the message\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-remove-byte       drop the last byte from the message\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-short-bit <bit>   make this bit shorter than allowed\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-long-bit <bit>    make this bit longer than allowed\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-custom-bit <bit>  send the custom pulse instead of this bit\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-short-start       send a start pulse that's too short\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-long-start        send a start pulse that's too long\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-custom-start      send the custom pulse instead of the start pulse\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-last-bit <bit>    stop sending after this bit\n");
	FUNC3(sf, "#   <op>[,<mode>] tx-low-drive <bit>   force a low-drive condition at this bit position\n");
	FUNC3(sf, "#\n");
	FUNC3(sf, "# <op>       CEC message opcode (0-255) or 'any'\n");
	FUNC3(sf, "# <mode>     'once' (default), 'always', 'toggle' or 'off'\n");
	FUNC3(sf, "# <bit>      CEC message bit (0-159)\n");
	FUNC3(sf, "#            10 bits per 'byte': bits 0-7: data, bit 8: EOM, bit 9: ACK\n");
	FUNC3(sf, "# <poll>     CEC poll message used to test arbitration lost (0x00-0xff, default 0x0f)\n");
	FUNC3(sf, "# <usecs>    microseconds (0-10000000, default 1000)\n");

	FUNC3(sf, "\nclear\n");

	for (i = 0; i < FUNC0(pin->error_inj); i++) {
		u64 e = pin->error_inj[i];

		for (j = 0; cec_error_inj_cmds[j].cmd; j++) {
			const char *cmd = cec_error_inj_cmds[j].cmd;
			unsigned int mode;
			unsigned int mode_offset;
			int arg_idx;

			mode_offset = cec_error_inj_cmds[j].mode_offset;
			arg_idx = cec_error_inj_cmds[j].arg_idx;
			mode = (e >> mode_offset) & CEC_ERROR_INJ_MODE_MASK;
			if (!mode)
				continue;
			FUNC1(sf, i, mode);
			FUNC3(sf, cmd);
			if (arg_idx >= 0)
				FUNC2(sf, " %u",
					   pin->error_inj_args[i][arg_idx]);
			FUNC3(sf, "\n");
		}
	}

	if (pin->tx_ignore_nack_until_eom)
		FUNC3(sf, "tx-ignore-nack-until-eom\n");
	if (pin->tx_custom_pulse)
		FUNC3(sf, "tx-custom-pulse\n");
	if (pin->tx_custom_low_usecs != CEC_TIM_CUSTOM_DEFAULT)
		FUNC2(sf, "tx-custom-low-usecs %u\n",
			   pin->tx_custom_low_usecs);
	if (pin->tx_custom_high_usecs != CEC_TIM_CUSTOM_DEFAULT)
		FUNC2(sf, "tx-custom-high-usecs %u\n",
			   pin->tx_custom_high_usecs);
	return 0;
}