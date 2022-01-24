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
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 unsigned int* fxas21002c_hpf_values ; 

__attribute__((used)) static int FUNC1(struct fxas21002c_data *data,
					 unsigned int hz)
{
	int hpf_table_size = FUNC0(fxas21002c_hpf_values);
	int i;

	for (i = 0; i < hpf_table_size; i++)
		if (fxas21002c_hpf_values[i] == hz)
			return i;

	return -EINVAL;
}