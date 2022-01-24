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
typedef  int uint8_t ;
typedef  int uint64_t ;
struct fsi_master_gpio {int /*<<< orphan*/  dev; } ;
struct fsi_gpio_msg {int msg; int bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsi_master_gpio*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_gpio*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_master_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_master_gpio*,int,int) ; 

__attribute__((used)) static void FUNC5(struct fsi_master_gpio *master,
			const struct fsi_gpio_msg *cmd)
{
	uint8_t bit;
	uint64_t msg = ~cmd->msg;	/* Data is active low */
	uint64_t sda_mask = 0x1ULL << (cmd->bits - 1);
	uint64_t last_bit = ~0;
	int next_bit;

	FUNC4(master, cmd->bits, cmd->msg);

	if (!cmd->bits) {
		FUNC1(master->dev, "trying to output 0 bits\n");
		return;
	}
	FUNC3(master, 0);

	/* Send the start bit */
	FUNC2(master, 0);
	FUNC0(master, 1);

	/* Send the message */
	for (bit = 0; bit < cmd->bits; bit++) {
		next_bit = (msg & sda_mask) >> (cmd->bits - 1);
		if (last_bit ^ next_bit) {
			FUNC2(master, next_bit);
			last_bit = next_bit;
		}
		FUNC0(master, 1);
		msg <<= 1;
	}
}