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
struct cbus_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cbus_host*,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct cbus_host *host, unsigned data, unsigned len)
{
	int i;

	for (i = len; i > 0; i--)
		FUNC0(host, data & (1 << (i - 1)));
}