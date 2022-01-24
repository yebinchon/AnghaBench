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
struct tty_struct {scalar_t__ disc_data; } ;
struct serport {int /*<<< orphan*/  lock; int /*<<< orphan*/  serio; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned int SERIO_FRAME ; 
 unsigned int SERIO_PARITY ; 
 int /*<<< orphan*/  SERPORT_ACTIVE ; 
#define  TTY_FRAME 129 
#define  TTY_PARITY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, const unsigned char *cp, char *fp, int count)
{
	struct serport *serport = (struct serport*) tty->disc_data;
	unsigned long flags;
	unsigned int ch_flags = 0;
	int i;

	FUNC1(&serport->lock, flags);

	if (!FUNC3(SERPORT_ACTIVE, &serport->flags))
		goto out;

	for (i = 0; i < count; i++) {
		if (fp) {
			switch (fp[i]) {
			case TTY_FRAME:
				ch_flags = SERIO_FRAME;
				break;

			case TTY_PARITY:
				ch_flags = SERIO_PARITY;
				break;

			default:
				ch_flags = 0;
				break;
			}
		}

		FUNC0(serport->serio, cp[i], ch_flags);
	}

out:
	FUNC2(&serport->lock, flags);
}