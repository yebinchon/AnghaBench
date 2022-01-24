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
struct r0conf {struct r0conf* devlist; struct r0conf* strip_zone; } ;
struct mddev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r0conf*) ; 

__attribute__((used)) static void FUNC1(struct mddev *mddev, void *priv)
{
	struct r0conf *conf = priv;

	FUNC0(conf->strip_zone);
	FUNC0(conf->devlist);
	FUNC0(conf);
}