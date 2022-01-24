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
struct cpcap_adc {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_REG_ADCC1 ; 
 int /*<<< orphan*/  CPCAP_REG_ADCC1_DEFAULTS ; 
 int /*<<< orphan*/  CPCAP_REG_ADCC2 ; 
 int /*<<< orphan*/  CPCAP_REG_ADCC2_DEFAULTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct cpcap_adc *ddata)
{
	int error;

	error = FUNC0(ddata->reg, CPCAP_REG_ADCC1,
				   0xffff,
				   CPCAP_REG_ADCC1_DEFAULTS);
	if (error)
		return error;

	return FUNC0(ddata->reg, CPCAP_REG_ADCC2,
				  0xffff,
				  CPCAP_REG_ADCC2_DEFAULTS);
}