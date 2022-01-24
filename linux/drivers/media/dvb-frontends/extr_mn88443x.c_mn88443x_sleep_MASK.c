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
struct mn88443x_priv {int dummy; } ;
struct dvb_frontend {struct mn88443x_priv* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mn88443x_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mn88443x_priv*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct mn88443x_priv *chip = fe->demodulator_priv;

	FUNC0(chip);
	FUNC1(chip);

	return 0;
}