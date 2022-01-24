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
struct td028ttec1_panel {int /*<<< orphan*/  panel; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct td028ttec1_panel* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct td028ttec1_panel *lcd = FUNC3(spi);

	FUNC1(&lcd->panel);
	FUNC0(&lcd->panel);
	FUNC2(&lcd->panel);

	return 0;
}