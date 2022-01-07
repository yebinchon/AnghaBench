
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct auo_pixcir_ts_platdata {int dummy; } ;


 int EINVAL ;
 struct auo_pixcir_ts_platdata* ERR_PTR (int ) ;

__attribute__((used)) static struct auo_pixcir_ts_platdata *auo_pixcir_parse_dt(struct device *dev)
{
 return ERR_PTR(-EINVAL);
}
