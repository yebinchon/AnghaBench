#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {int vc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC5(struct dsi_data *dsi, int channel,
					    u8 data_type, u16 len, u8 ecc)
{
	u32 val;
	u8 data_id;

	FUNC2(!FUNC3(dsi));

	data_id = data_type | dsi->vc[channel].vc_id << 6;

	val = FUNC1(data_id, 7, 0) | FUNC1(len, 23, 8) |
		FUNC1(ecc, 31, 24);

	FUNC4(dsi, FUNC0(channel), val);
}