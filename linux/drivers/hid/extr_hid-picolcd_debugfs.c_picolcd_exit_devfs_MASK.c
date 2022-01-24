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
struct picolcd_data {int /*<<< orphan*/  mutex_flash; struct dentry* debug_flash; struct dentry* debug_eeprom; struct dentry* debug_reset; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct picolcd_data *data)
{
	struct dentry *dent;

	dent = data->debug_reset;
	data->debug_reset = NULL;
	FUNC0(dent);
	dent = data->debug_eeprom;
	data->debug_eeprom = NULL;
	FUNC0(dent);
	dent = data->debug_flash;
	data->debug_flash = NULL;
	FUNC0(dent);
	FUNC1(&data->mutex_flash);
}