
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbd {scalar_t__ softraw; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t atkbd_show_softraw(struct atkbd *atkbd, char *buf)
{
 return sprintf(buf, "%d\n", atkbd->softraw ? 1 : 0);
}
