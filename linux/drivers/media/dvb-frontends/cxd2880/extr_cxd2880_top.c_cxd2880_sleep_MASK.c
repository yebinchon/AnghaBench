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
struct dvb_frontend {struct cxd2880_priv* demodulator_priv; } ;
struct cxd2880_priv {int /*<<< orphan*/  spi_mutex; int /*<<< orphan*/  tnrdmd; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe)
{
	int ret;
	struct cxd2880_priv *priv = NULL;

	if (!fe) {
		FUNC4("invalid arg\n");
		return -EINVAL;
	}

	priv = fe->demodulator_priv;

	FUNC1(priv->spi_mutex);
	ret = FUNC0(&priv->tnrdmd);
	FUNC2(priv->spi_mutex);

	FUNC3("tnrdmd_sleep ret %d\n", ret);

	return ret;
}