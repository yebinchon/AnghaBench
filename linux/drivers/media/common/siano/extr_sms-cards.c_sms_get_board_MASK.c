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
struct sms_board {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sms_board*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sms_board* sms_boards ; 

struct sms_board *FUNC2(unsigned id)
{
	FUNC1(id >= FUNC0(sms_boards));

	return &sms_boards[id];
}