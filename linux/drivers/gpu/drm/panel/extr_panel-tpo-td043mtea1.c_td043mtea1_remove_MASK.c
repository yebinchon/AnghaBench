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
struct td043mtea1_panel {int /*<<< orphan*/  panel; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct spi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct td043mtea1_panel* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  td043mtea1_attr_group ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct td043mtea1_panel *lcd = FUNC3(spi);

	FUNC1(&lcd->panel);
	FUNC0(&lcd->panel);
	FUNC2(&lcd->panel);

	FUNC4(&spi->dev.kobj, &td043mtea1_attr_group);

	return 0;
}