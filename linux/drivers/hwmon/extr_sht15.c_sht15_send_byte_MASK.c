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
struct sht15_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sht15_data*,int) ; 

__attribute__((used)) static void FUNC1(struct sht15_data *data, u8 byte)
{
	int i;

	for (i = 0; i < 8; i++) {
		FUNC0(data, !!(byte & 0x80));
		byte <<= 1;
	}
}