
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int cmd_complete; int cmd_err; } ;


 int complete (int *) ;

__attribute__((used)) static inline void
omap_i2c_complete_cmd(struct omap_i2c_dev *omap, u16 err)
{
 omap->cmd_err |= err;
 complete(&omap->cmd_complete);
}
