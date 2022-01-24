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
struct dibx000_i2c_master {int /*<<< orphan*/  master_i2c_adap_gpio67; int /*<<< orphan*/  master_i2c_adap_gpio34; int /*<<< orphan*/  master_i2c_adap_gpio12; int /*<<< orphan*/  gated_tuner_i2c_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct dibx000_i2c_master *mst)
{
	FUNC0(&mst->gated_tuner_i2c_adap);
	FUNC0(&mst->master_i2c_adap_gpio12);
	FUNC0(&mst->master_i2c_adap_gpio34);
	FUNC0(&mst->master_i2c_adap_gpio67);
}