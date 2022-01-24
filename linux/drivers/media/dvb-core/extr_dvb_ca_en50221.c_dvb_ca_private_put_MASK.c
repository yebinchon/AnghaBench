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
struct dvb_ca_private {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  dvb_ca_private_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dvb_ca_private *ca)
{
	FUNC0(&ca->refcount, dvb_ca_private_release);
}