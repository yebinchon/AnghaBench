
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spacc_engine {int dummy; } ;
struct device {int dummy; } ;


 struct spacc_engine* dev_get_drvdata (struct device*) ;

__attribute__((used)) static inline struct spacc_engine *spacc_dev_to_engine(struct device *dev)
{
 return dev ? dev_get_drvdata(dev) : ((void*)0);
}
