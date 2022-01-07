
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_cvp_conf {int map; } ;


 int writel (int ,int ) ;

__attribute__((used)) static void altera_cvp_write_data_iomem(struct altera_cvp_conf *conf, u32 val)
{
 writel(val, conf->map);
}
