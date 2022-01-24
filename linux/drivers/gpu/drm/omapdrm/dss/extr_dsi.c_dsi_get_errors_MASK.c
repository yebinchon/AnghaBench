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
typedef  scalar_t__ u32 ;
struct dsi_data {int /*<<< orphan*/  errors_lock; scalar_t__ errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC2(struct dsi_data *dsi)
{
	unsigned long flags;
	u32 e;

	FUNC0(&dsi->errors_lock, flags);
	e = dsi->errors;
	dsi->errors = 0;
	FUNC1(&dsi->errors_lock, flags);
	return e;
}