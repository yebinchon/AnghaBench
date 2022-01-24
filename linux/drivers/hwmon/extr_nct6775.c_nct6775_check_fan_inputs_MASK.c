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
struct nct6775_data {int sioreg; int sio_reg_enable; int kind; int has_fan; int has_fan_min; int has_pwm; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DMI_BOARD_NAME ; 
 int /*<<< orphan*/  DMI_BOARD_VENDOR ; 
 int /*<<< orphan*/  NCT6775_LD_12 ; 
 int /*<<< orphan*/  NCT6775_LD_HWM ; 
 int SIO_REG_ENABLE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int nct6106 ; 
 int nct6116 ; 
 int nct6775 ; 
 int nct6776 ; 
#define  nct6791 134 
#define  nct6792 133 
#define  nct6793 132 
#define  nct6795 131 
#define  nct6796 130 
#define  nct6797 129 
#define  nct6798 128 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct nct6775_data *data)
{
	bool fan3pin = false, fan4pin = false, fan4min = false;
	bool fan5pin = false, fan6pin = false, fan7pin = false;
	bool pwm3pin = false, pwm4pin = false, pwm5pin = false;
	bool pwm6pin = false, pwm7pin = false;
	int sioreg = data->sioreg;

	/* Store SIO_REG_ENABLE for use during resume */
	FUNC5(sioreg, NCT6775_LD_HWM);
	data->sio_reg_enable = FUNC3(sioreg, SIO_REG_ENABLE);

	/* fan4 and fan5 share some pins with the GPIO and serial flash */
	if (data->kind == nct6775) {
		int cr2c = FUNC3(sioreg, 0x2c);

		fan3pin = cr2c & FUNC0(6);
		pwm3pin = cr2c & FUNC0(7);

		/* On NCT6775, fan4 shares pins with the fdc interface */
		fan4pin = !(FUNC3(sioreg, 0x2A) & 0x80);
	} else if (data->kind == nct6776) {
		bool gpok = FUNC3(sioreg, 0x27) & 0x80;
		const char *board_vendor, *board_name;

		board_vendor = FUNC1(DMI_BOARD_VENDOR);
		board_name = FUNC1(DMI_BOARD_NAME);

		if (board_name && board_vendor &&
		    !FUNC2(board_vendor, "ASRock")) {
			/*
			 * Auxiliary fan monitoring is not enabled on ASRock
			 * Z77 Pro4-M if booted in UEFI Ultra-FastBoot mode.
			 * Observed with BIOS version 2.00.
			 */
			if (!FUNC2(board_name, "Z77 Pro4-M")) {
				if ((data->sio_reg_enable & 0xe0) != 0xe0) {
					data->sio_reg_enable |= 0xe0;
					FUNC4(sioreg, SIO_REG_ENABLE,
						     data->sio_reg_enable);
				}
			}
		}

		if (data->sio_reg_enable & 0x80)
			fan3pin = gpok;
		else
			fan3pin = !(FUNC3(sioreg, 0x24) & 0x40);

		if (data->sio_reg_enable & 0x40)
			fan4pin = gpok;
		else
			fan4pin = FUNC3(sioreg, 0x1C) & 0x01;

		if (data->sio_reg_enable & 0x20)
			fan5pin = gpok;
		else
			fan5pin = FUNC3(sioreg, 0x1C) & 0x02;

		fan4min = fan4pin;
		pwm3pin = fan3pin;
	} else if (data->kind == nct6106) {
		int cr24 = FUNC3(sioreg, 0x24);

		fan3pin = !(cr24 & 0x80);
		pwm3pin = cr24 & 0x08;
	} else if (data->kind == nct6116) {
		int cr1a = FUNC3(sioreg, 0x1a);
		int cr1b = FUNC3(sioreg, 0x1b);
		int cr24 = FUNC3(sioreg, 0x24);
		int cr2a = FUNC3(sioreg, 0x2a);
		int cr2b = FUNC3(sioreg, 0x2b);
		int cr2f = FUNC3(sioreg, 0x2f);

		fan3pin = !(cr2b & 0x10);
		fan4pin = (cr2b & 0x80) ||			// pin 1(2)
			(!(cr2f & 0x10) && (cr1a & 0x04));	// pin 65(66)
		fan5pin = (cr2b & 0x80) ||			// pin 126(127)
			(!(cr1b & 0x03) && (cr2a & 0x02));	// pin 94(96)

		pwm3pin = fan3pin && (cr24 & 0x08);
		pwm4pin = fan4pin;
		pwm5pin = fan5pin;
	} else {
		/*
		 * NCT6779D, NCT6791D, NCT6792D, NCT6793D, NCT6795D, NCT6796D,
		 * NCT6797D, NCT6798D
		 */
		int cr1a = FUNC3(sioreg, 0x1a);
		int cr1b = FUNC3(sioreg, 0x1b);
		int cr1c = FUNC3(sioreg, 0x1c);
		int cr1d = FUNC3(sioreg, 0x1d);
		int cr2a = FUNC3(sioreg, 0x2a);
		int cr2b = FUNC3(sioreg, 0x2b);
		int cr2d = FUNC3(sioreg, 0x2d);
		int cr2f = FUNC3(sioreg, 0x2f);
		bool dsw_en = cr2f & FUNC0(3);
		bool ddr4_en = cr2f & FUNC0(4);
		int cre0;
		int creb;
		int cred;

		FUNC5(sioreg, NCT6775_LD_12);
		cre0 = FUNC3(sioreg, 0xe0);
		creb = FUNC3(sioreg, 0xeb);
		cred = FUNC3(sioreg, 0xed);

		fan3pin = !(cr1c & FUNC0(5));
		fan4pin = !(cr1c & FUNC0(6));
		fan5pin = !(cr1c & FUNC0(7));

		pwm3pin = !(cr1c & FUNC0(0));
		pwm4pin = !(cr1c & FUNC0(1));
		pwm5pin = !(cr1c & FUNC0(2));

		switch (data->kind) {
		case nct6791:
			fan6pin = cr2d & FUNC0(1);
			pwm6pin = cr2d & FUNC0(0);
			break;
		case nct6792:
			fan6pin = !dsw_en && (cr2d & FUNC0(1));
			pwm6pin = !dsw_en && (cr2d & FUNC0(0));
			break;
		case nct6793:
			fan5pin |= cr1b & FUNC0(5);
			fan5pin |= creb & FUNC0(5);

			fan6pin = !dsw_en && (cr2d & FUNC0(1));
			fan6pin |= creb & FUNC0(3);

			pwm5pin |= cr2d & FUNC0(7);
			pwm5pin |= (creb & FUNC0(4)) && !(cr2a & FUNC0(0));

			pwm6pin = !dsw_en && (cr2d & FUNC0(0));
			pwm6pin |= creb & FUNC0(2);
			break;
		case nct6795:
			fan5pin |= cr1b & FUNC0(5);
			fan5pin |= creb & FUNC0(5);

			fan6pin = (cr2a & FUNC0(4)) &&
					(!dsw_en || (cred & FUNC0(4)));
			fan6pin |= creb & FUNC0(3);

			pwm5pin |= cr2d & FUNC0(7);
			pwm5pin |= (creb & FUNC0(4)) && !(cr2a & FUNC0(0));

			pwm6pin = (cr2a & FUNC0(3)) && (cred & FUNC0(2));
			pwm6pin |= creb & FUNC0(2);
			break;
		case nct6796:
			fan5pin |= cr1b & FUNC0(5);
			fan5pin |= (cre0 & FUNC0(3)) && !(cr1b & FUNC0(0));
			fan5pin |= creb & FUNC0(5);

			fan6pin = (cr2a & FUNC0(4)) &&
					(!dsw_en || (cred & FUNC0(4)));
			fan6pin |= creb & FUNC0(3);

			fan7pin = !(cr2b & FUNC0(2));

			pwm5pin |= cr2d & FUNC0(7);
			pwm5pin |= (cre0 & FUNC0(4)) && !(cr1b & FUNC0(0));
			pwm5pin |= (creb & FUNC0(4)) && !(cr2a & FUNC0(0));

			pwm6pin = (cr2a & FUNC0(3)) && (cred & FUNC0(2));
			pwm6pin |= creb & FUNC0(2);

			pwm7pin = !(cr1d & (FUNC0(2) | FUNC0(3)));
			break;
		case nct6797:
			fan5pin |= !ddr4_en && (cr1b & FUNC0(5));
			fan5pin |= creb & FUNC0(5);

			fan6pin = cr2a & FUNC0(4);
			fan6pin |= creb & FUNC0(3);

			fan7pin = cr1a & FUNC0(1);

			pwm5pin |= (creb & FUNC0(4)) && !(cr2a & FUNC0(0));
			pwm5pin |= !ddr4_en && (cr2d & FUNC0(7));

			pwm6pin = creb & FUNC0(2);
			pwm6pin |= cred & FUNC0(2);

			pwm7pin = cr1d & FUNC0(4);
			break;
		case nct6798:
			fan6pin = !(cr1b & FUNC0(0)) && (cre0 & FUNC0(3));
			fan6pin |= cr2a & FUNC0(4);
			fan6pin |= creb & FUNC0(5);

			fan7pin = cr1b & FUNC0(5);
			fan7pin |= !(cr2b & FUNC0(2));
			fan7pin |= creb & FUNC0(3);

			pwm6pin = !(cr1b & FUNC0(0)) && (cre0 & FUNC0(4));
			pwm6pin |= !(cred & FUNC0(2)) && (cr2a & FUNC0(3));
			pwm6pin |= (creb & FUNC0(4)) && !(cr2a & FUNC0(0));

			pwm7pin = !(cr1d & (FUNC0(2) | FUNC0(3)));
			pwm7pin |= cr2d & FUNC0(7);
			pwm7pin |= creb & FUNC0(2);
			break;
		default:	/* NCT6779D */
			break;
		}

		fan4min = fan4pin;
	}

	/* fan 1 and 2 (0x03) are always present */
	data->has_fan = 0x03 | (fan3pin << 2) | (fan4pin << 3) |
		(fan5pin << 4) | (fan6pin << 5) | (fan7pin << 6);
	data->has_fan_min = 0x03 | (fan3pin << 2) | (fan4min << 3) |
		(fan5pin << 4) | (fan6pin << 5) | (fan7pin << 6);
	data->has_pwm = 0x03 | (pwm3pin << 2) | (pwm4pin << 3) |
		(pwm5pin << 4) | (pwm6pin << 5) | (pwm7pin << 6);
}