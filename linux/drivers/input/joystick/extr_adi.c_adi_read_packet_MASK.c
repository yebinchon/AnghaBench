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
struct gameport {int dummy; } ;
struct adi_port {struct gameport* gameport; struct adi* adi; } ;
struct adi {int ret; unsigned char* data; } ;

/* Variables and functions */
 int ADI_MAX_LENGTH ; 
 int /*<<< orphan*/  ADI_MAX_START ; 
 int /*<<< orphan*/  ADI_MAX_STROBE ; 
 unsigned char FUNC0 (struct gameport*) ; 
 int FUNC1 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(struct adi_port *port)
{
	struct adi *adi = port->adi;
	struct gameport *gameport = port->gameport;
	unsigned char u, v, w, x, z;
	int t[2], s[2], i;
	unsigned long flags;

	for (i = 0; i < 2; i++) {
		adi[i].ret = -1;
		t[i] = FUNC1(gameport, ADI_MAX_START);
		s[i] = 0;
	}

	FUNC4(flags);

	FUNC2(gameport);
	v = z = FUNC0(gameport);

	do {
		u = v;
		w = u ^ (v = x = FUNC0(gameport));
		for (i = 0; i < 2; i++, w >>= 2, x >>= 2) {
			t[i]--;
			if ((w & 0x30) && s[i]) {
				if ((w & 0x30) < 0x30 && adi[i].ret < ADI_MAX_LENGTH && t[i] > 0) {
					adi[i].data[++adi[i].ret] = w;
					t[i] = FUNC1(gameport, ADI_MAX_STROBE);
				} else t[i] = 0;
			} else if (!(x & 0x30)) s[i] = 1;
		}
	} while (t[0] > 0 || t[1] > 0);

	FUNC3(flags);

	return;
}