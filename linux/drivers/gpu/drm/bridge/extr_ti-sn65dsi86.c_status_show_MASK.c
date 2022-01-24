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
struct ti_sn_bridge {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct seq_file {struct ti_sn_bridge* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *data)
{
	struct ti_sn_bridge *pdata = s->private;
	unsigned int reg, val;

	FUNC4(s, "STATUS REGISTERS:\n");

	FUNC0(pdata->dev);

	/* IRQ Status Registers, see Table 31 in datasheet */
	for (reg = 0xf0; reg <= 0xf8; reg++) {
		FUNC2(pdata->regmap, reg, &val);
		FUNC3(s, "[0x%02x] = 0x%08x\n", reg, val);
	}

	FUNC1(pdata->dev);

	return 0;
}