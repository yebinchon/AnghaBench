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
struct fsi_master_gpio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsi_master_gpio*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_master_gpio*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_gpio*,int) ; 

__attribute__((used)) static void FUNC3(struct fsi_master_gpio *master, int count)
{
	FUNC2(master, count);
	FUNC1(master, 1);
	FUNC0(master, count);
}