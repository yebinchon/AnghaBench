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
typedef  unsigned int u8 ;
struct ad799x_state {int id; unsigned int config; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 unsigned int AD7997_8_READ_SINGLE ; 
 unsigned int AD799X_CHANNEL_SHIFT ; 
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
#define  ad7991 135 
#define  ad7992 134 
#define  ad7993 133 
#define  ad7994 132 
#define  ad7995 131 
#define  ad7997 130 
#define  ad7998 129 
#define  ad7999 128 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct ad799x_state *st, unsigned ch)
{
	u8 cmd;

	switch (st->id) {
	case ad7991:
	case ad7995:
	case ad7999:
		cmd = st->config | (FUNC0(ch) << AD799X_CHANNEL_SHIFT);
		break;
	case ad7992:
	case ad7993:
	case ad7994:
		cmd = FUNC0(ch) << AD799X_CHANNEL_SHIFT;
		break;
	case ad7997:
	case ad7998:
		cmd = (ch << AD799X_CHANNEL_SHIFT) | AD7997_8_READ_SINGLE;
		break;
	default:
		return -EINVAL;
	}

	return FUNC1(st->client, cmd);
}