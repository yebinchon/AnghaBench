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
struct dvb_frontend_private {int /*<<< orphan*/  dvbdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  release; } ;
struct dvb_frontend {TYPE_1__ ops; struct dvb_frontend_private* frontend_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend_private*) ; 

__attribute__((used)) static void FUNC3(struct dvb_frontend *fe)
{
	struct dvb_frontend_private *fepriv = fe->frontend_priv;

	if (fepriv)
		FUNC0(fepriv->dvbdev);

	FUNC1(fe, fe->ops.release);

	FUNC2(fepriv);
}