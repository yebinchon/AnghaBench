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
struct fxas21002c_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_FS ; 
 int FUNC0 (struct fxas21002c_data*,int) ; 
 int FUNC1 (struct fxas21002c_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct fxas21002c_data *data, int range)
{
	int fs_bits;

	fs_bits = FUNC0(data, range);
	if (fs_bits < 0)
		return fs_bits;

	return FUNC1(data, F_FS, fs_bits);
}