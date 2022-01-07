
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;


 int mddev_congested (struct mddev*,int) ;

__attribute__((used)) static int md_congested(void *data, int bits)
{
 struct mddev *mddev = data;
 return mddev_congested(mddev, bits);
}
