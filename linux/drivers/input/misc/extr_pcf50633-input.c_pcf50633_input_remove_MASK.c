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
struct platform_device {int dummy; } ;
struct pcf50633_input {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  pcf; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF50633_IRQ_ONKEYF ; 
 int /*<<< orphan*/  PCF50633_IRQ_ONKEYR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcf50633_input*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcf50633_input* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct pcf50633_input *input  = FUNC3(pdev);

	FUNC2(input->pcf, PCF50633_IRQ_ONKEYR);
	FUNC2(input->pcf, PCF50633_IRQ_ONKEYF);

	FUNC0(input->input_dev);
	FUNC1(input);

	return 0;
}