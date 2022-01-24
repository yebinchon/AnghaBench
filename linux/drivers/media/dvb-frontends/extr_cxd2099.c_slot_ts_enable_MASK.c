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
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cxd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxd*,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_ca_en50221 *ca, int slot)
{
	struct cxd *ci = ca->data;

	FUNC1(&ci->lock);
	FUNC4(ci, 0x09, 0x00, 0x08);
	FUNC3(ci, 0);
	FUNC0(ci, 1);
	FUNC2(&ci->lock);
	return 0;
}