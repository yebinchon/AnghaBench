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
struct sis5595_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIS5595_REG_CONFIG ; 
 int FUNC0 (struct sis5595_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sis5595_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sis5595_data *data)
{
	u8 config = FUNC0(data, SIS5595_REG_CONFIG);
	if (!(config & 0x01))
		FUNC1(data, SIS5595_REG_CONFIG,
				(config & 0xf7) | 0x01);
}