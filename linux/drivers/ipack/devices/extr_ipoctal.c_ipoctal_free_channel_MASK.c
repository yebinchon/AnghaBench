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
struct ipoctal_channel {scalar_t__ nb_bytes; scalar_t__ pointer_write; scalar_t__ pointer_read; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ipoctal_channel *channel)
{
	FUNC0(&channel->stats);
	channel->pointer_read = 0;
	channel->pointer_write = 0;
	channel->nb_bytes = 0;
}