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
struct nau7802_state {int last_value; int /*<<< orphan*/  data_lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU7802_REG_ADC_B0 ; 
 int /*<<< orphan*/  NAU7802_REG_ADC_B1 ; 
 int /*<<< orphan*/  NAU7802_REG_ADC_B2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct nau7802_state *st)
{
	int data;

	FUNC1(&st->data_lock);
	data = FUNC0(st->client, NAU7802_REG_ADC_B2);
	if (data < 0)
		goto nau7802_read_conversion_out;
	st->last_value = data << 16;

	data = FUNC0(st->client, NAU7802_REG_ADC_B1);
	if (data < 0)
		goto nau7802_read_conversion_out;
	st->last_value |= data << 8;

	data = FUNC0(st->client, NAU7802_REG_ADC_B0);
	if (data < 0)
		goto nau7802_read_conversion_out;
	st->last_value |= data;

	st->last_value = FUNC3(st->last_value, 23);

nau7802_read_conversion_out:
	FUNC2(&st->data_lock);

	return data;
}