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
struct stm_source_device {int /*<<< orphan*/  dev; } ;
struct stm_source_data {struct stm_source_device* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stm_source_device*) ; 

void FUNC2(struct stm_source_data *data)
{
	struct stm_source_device *src = data->src;

	FUNC1(src);

	FUNC0(&src->dev);
}