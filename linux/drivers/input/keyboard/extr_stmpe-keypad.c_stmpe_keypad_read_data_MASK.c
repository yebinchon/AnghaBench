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
typedef  int u8 ;
struct stmpe_keypad_variant {int num_data; scalar_t__ auto_increment; } ;
struct stmpe_keypad {struct stmpe* stmpe; struct stmpe_keypad_variant* variant; } ;
struct stmpe {int dummy; } ;

/* Variables and functions */
 scalar_t__ STMPE_KPC_DATA_BYTE0 ; 
 int FUNC0 (struct stmpe*,scalar_t__,int,int*) ; 
 int FUNC1 (struct stmpe*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct stmpe_keypad *keypad, u8 *data)
{
	const struct stmpe_keypad_variant *variant = keypad->variant;
	struct stmpe *stmpe = keypad->stmpe;
	int ret;
	int i;

	if (variant->auto_increment)
		return FUNC0(stmpe, STMPE_KPC_DATA_BYTE0,
					variant->num_data, data);

	for (i = 0; i < variant->num_data; i++) {
		ret = FUNC1(stmpe, STMPE_KPC_DATA_BYTE0 + i);
		if (ret < 0)
			return ret;

		data[i] = ret;
	}

	return 0;
}