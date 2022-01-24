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
struct ssp_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssp_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssp_data*) ; 

__attribute__((used)) static void FUNC3(struct ssp_data *data)
{
	FUNC1(data, false);
	FUNC0(data);
	FUNC2(data);
	FUNC1(data, true);
}