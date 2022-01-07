
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usleep_range (int,int) ;

__attribute__((used)) static void icy_pcf_waitforpin(void *data)
{
 usleep_range(50, 150);
}
