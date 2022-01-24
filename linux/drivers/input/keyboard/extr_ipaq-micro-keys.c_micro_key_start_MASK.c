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
struct ipaq_micro_keys {TYPE_1__* micro; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct ipaq_micro_keys* key_data; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  micro_key_receive ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ipaq_micro_keys *keys)
{
	FUNC0(&keys->micro->lock);
	keys->micro->key = micro_key_receive;
	keys->micro->key_data = keys;
	FUNC1(&keys->micro->lock);
}