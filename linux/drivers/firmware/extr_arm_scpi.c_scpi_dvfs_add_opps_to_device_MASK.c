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
struct scpi_opp {int m_volt; int /*<<< orphan*/  freq; } ;
struct scpi_dvfs_info {int count; struct scpi_opp* opps; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct scpi_dvfs_info*) ; 
 int FUNC1 (struct scpi_dvfs_info*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct scpi_dvfs_info* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	int idx, ret;
	struct scpi_opp *opp;
	struct scpi_dvfs_info *info = FUNC5(dev);

	if (FUNC0(info))
		return FUNC1(info);

	if (!info->opps)
		return -EIO;

	for (opp = info->opps, idx = 0; idx < info->count; idx++, opp++) {
		ret = FUNC2(dev, opp->freq, opp->m_volt * 1000);
		if (ret) {
			FUNC4(dev, "failed to add opp %uHz %umV\n",
				 opp->freq, opp->m_volt);
			while (idx-- > 0)
				FUNC3(dev, (--opp)->freq);
			return ret;
		}
	}
	return 0;
}