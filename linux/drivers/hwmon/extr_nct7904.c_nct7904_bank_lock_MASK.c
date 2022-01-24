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
struct nct7904_data {unsigned int bank_sel; int /*<<< orphan*/  client; int /*<<< orphan*/  bank_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANK_SEL_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct nct7904_data *data, unsigned int bank)
{
	int ret;

	FUNC1(&data->bank_lock);
	if (data->bank_sel == bank)
		return 0;
	ret = FUNC0(data->client, BANK_SEL_REG, bank);
	if (ret == 0)
		data->bank_sel = bank;
	else
		data->bank_sel = -1;
	return ret;
}