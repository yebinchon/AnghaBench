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
struct hdmi_context {TYPE_1__* drv_data; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ HDMI_TYPE13 ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_context*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_context*) ; 

__attribute__((used)) static void FUNC3(struct hdmi_context *hdata)
{
	if (hdata->drv_data->type == HDMI_TYPE13)
		FUNC1(hdata);
	else
		FUNC2(hdata);

	FUNC0(hdata, true);
}