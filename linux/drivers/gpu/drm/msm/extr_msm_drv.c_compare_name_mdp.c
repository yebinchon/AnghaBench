
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static int compare_name_mdp(struct device *dev, void *data)
{
 return (strstr(dev_name(dev), "mdp") != ((void*)0));
}
