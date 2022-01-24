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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cxd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dvb_ca_en50221 *ca, int slot,
			     u8 address, u8 value)
{
	struct cxd *ci = ca->data;

	FUNC0(&ci->lock);
	FUNC2(ci, 0);
	FUNC3(ci, address, value);
	FUNC1(&ci->lock);
	return 0;
}