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
struct ipu_image_convert_run {int dummy; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 

__attribute__((used)) static void FUNC1(struct ipu_image_convert_run *run,
					void *data)
{
	struct completion *comp = data;

	FUNC0(comp);
}