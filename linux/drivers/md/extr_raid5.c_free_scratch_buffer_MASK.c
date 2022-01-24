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
struct raid5_percpu {int /*<<< orphan*/ * scribble; int /*<<< orphan*/ * spare_page; } ;
struct r5conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct r5conf *conf, struct raid5_percpu *percpu)
{
	FUNC1(percpu->spare_page);
	percpu->spare_page = NULL;
	FUNC0(percpu->scribble);
	percpu->scribble = NULL;
}