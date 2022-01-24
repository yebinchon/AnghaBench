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
typedef  int u8 ;
struct sp2 {int (* ci_control ) (void*,int,int,int,int*) ;int module_access_type; void* priv; TYPE_1__* client; } ;
struct dvb_ca_en50221 {struct sp2* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SP2_CI_ATTR_ACS ; 
 int SP2_MOD_CTL_ACS0 ; 
 int SP2_MOD_CTL_ACS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct sp2*,int,int*,int) ; 
 int FUNC3 (struct sp2*,int,int*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_ca_en50221 *en50221, int slot, u8 acs,
			u8 read, int addr, u8 data)
{
	struct sp2 *s = en50221->data;
	u8 store;
	int mem, ret;
	int (*ci_op_cam)(void*, u8, int, u8, int*) = s->ci_control;

	if (slot != 0)
		return -EINVAL;

	/*
	 * change module access type between IO space and attribute memory
	 * when needed
	 */
	if (s->module_access_type != acs) {
		ret = FUNC2(s, 0x00, &store, 1);

		if (ret)
			return ret;

		store &= ~(SP2_MOD_CTL_ACS1 | SP2_MOD_CTL_ACS0);
		store |= acs;

		ret = FUNC3(s, 0x00, &store, 1);
		if (ret)
			return ret;
	}

	s->module_access_type = acs;

	/* implementation of ci_op_cam is device specific */
	if (ci_op_cam) {
		ret = ci_op_cam(s->priv, read, addr, data, &mem);
	} else {
		FUNC1(&s->client->dev, "callback not defined");
		return -EINVAL;
	}

	if (ret)
		return ret;

	FUNC0(&s->client->dev, "%s: slot=%d, addr=0x%04x, %s, data=%x",
			(read) ? "read" : "write", slot, addr,
			(acs == SP2_CI_ATTR_ACS) ? "attr" : "io",
			(read) ? mem : data);

	if (read)
		return mem;
	else
		return 0;

}