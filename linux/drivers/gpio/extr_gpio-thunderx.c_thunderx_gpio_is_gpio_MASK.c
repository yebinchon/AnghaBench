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
struct thunderx_gpio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int FUNC1 (struct thunderx_gpio*,unsigned int) ; 

__attribute__((used)) static bool FUNC2(struct thunderx_gpio *txgpio,
				  unsigned int line)
{
	bool rv = FUNC1(txgpio, line);

	FUNC0(!rv, "Pin %d not available for GPIO\n", line);

	return rv;
}