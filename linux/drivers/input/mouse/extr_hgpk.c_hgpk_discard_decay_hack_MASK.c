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
struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int xlast; int xbigj; int xsaw_secondary; int ylast; int ybigj; int ysaw_secondary; int /*<<< orphan*/  recalib_wq; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ jumpy_delay ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,char*,...) ; 
 int recalib_delta ; 

__attribute__((used)) static int FUNC5(struct psmouse *psmouse, int x, int y)
{
	struct hgpk_data *priv = psmouse->private;
	int avx, avy;
	bool do_recal = false;

	avx = FUNC0(x);
	avy = FUNC0(y);

	/* discard if too big, or half that but > 4 times the prev delta */
	if (avx > recalib_delta ||
		(avx > recalib_delta / 2 && ((avx / 4) > priv->xlast))) {
		FUNC4(psmouse, "detected %dpx jump in x\n", x);
		priv->xbigj = avx;
	} else if (FUNC1(avx, priv->xbigj)) {
		FUNC4(psmouse, "detected secondary %dpx jump in x\n", x);
		priv->xbigj = avx;
		priv->xsaw_secondary++;
	} else {
		if (priv->xbigj && priv->xsaw_secondary > 1)
			do_recal = true;
		priv->xbigj = 0;
		priv->xsaw_secondary = 0;
	}

	if (avy > recalib_delta ||
		(avy > recalib_delta / 2 && ((avy / 4) > priv->ylast))) {
		FUNC4(psmouse, "detected %dpx jump in y\n", y);
		priv->ybigj = avy;
	} else if (FUNC1(avy, priv->ybigj)) {
		FUNC4(psmouse, "detected secondary %dpx jump in y\n", y);
		priv->ybigj = avy;
		priv->ysaw_secondary++;
	} else {
		if (priv->ybigj && priv->ysaw_secondary > 1)
			do_recal = true;
		priv->ybigj = 0;
		priv->ysaw_secondary = 0;
	}

	priv->xlast = avx;
	priv->ylast = avy;

	if (do_recal && jumpy_delay) {
		FUNC4(psmouse, "scheduling recalibration\n");
		FUNC3(psmouse, &priv->recalib_wq,
				FUNC2(jumpy_delay));
	}

	return priv->xbigj || priv->ybigj;
}