
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int a3d_csum(char *data, int count)
{
 int i, csum = 0;

 for (i = 0; i < count - 2; i++)
  csum += data[i];
 return (csum & 0x3f) != ((data[count - 2] << 3) | data[count - 1]);
}
