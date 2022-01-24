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
struct r5conf {scalar_t__ log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct r5conf*) ; 

__attribute__((used)) static inline void FUNC3(struct r5conf *conf)
{
	if (conf->log)
		FUNC1(conf->log);
	else if (FUNC2(conf))
		FUNC0(conf);
}