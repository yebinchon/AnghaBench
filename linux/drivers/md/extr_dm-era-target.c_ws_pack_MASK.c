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
struct writeset_metadata {int /*<<< orphan*/  root; int /*<<< orphan*/  nr_bits; } ;
struct writeset_disk {int /*<<< orphan*/  root; int /*<<< orphan*/  nr_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct writeset_metadata *core, struct writeset_disk *disk)
{
	disk->nr_bits = FUNC0(core->nr_bits);
	disk->root = FUNC1(core->root);
}