
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int dev; int regmap; } ;
struct seq_file {struct ti_sn_bridge* private; } ;


 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int seq_printf (struct seq_file*,char*,unsigned int,unsigned int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int status_show(struct seq_file *s, void *data)
{
 struct ti_sn_bridge *pdata = s->private;
 unsigned int reg, val;

 seq_puts(s, "STATUS REGISTERS:\n");

 pm_runtime_get_sync(pdata->dev);


 for (reg = 0xf0; reg <= 0xf8; reg++) {
  regmap_read(pdata->regmap, reg, &val);
  seq_printf(s, "[0x%02x] = 0x%08x\n", reg, val);
 }

 pm_runtime_put(pdata->dev);

 return 0;
}
