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
struct s6e8aa0 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  FUNC0 (struct s6e8aa0*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC2 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC3 (struct s6e8aa0*,int) ; 

__attribute__((used)) static void FUNC4(struct s6e8aa0 *ctx)
{
	FUNC3(ctx, 3);
	FUNC2(ctx);
	FUNC1(ctx);
	FUNC0(ctx, MIPI_DCS_SET_DISPLAY_ON);
}