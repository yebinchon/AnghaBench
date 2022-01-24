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
struct irq_data {int irq; } ;

/* Variables and functions */
 scalar_t__ IPR ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int* ipr_bit ; 

__attribute__((used)) static void FUNC1(struct irq_data *data)
{
	int bit;
	int irq = data->irq - 12;

	bit = ipr_bit[irq];
	if (bit >= 0) {
		if (bit < 8)
			FUNC0(bit & 7, IPR);
		else
			FUNC0(bit & 7, (IPR+1));
	}
}