
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_dev {char const* name; } ;



__attribute__((used)) static const char *__get_dev_name(struct dm_dev *dev)
{
 return dev ? dev->name : "-";
}
