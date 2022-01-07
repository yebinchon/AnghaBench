
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int uAbs(int X)
{
 if (X < 0)
  return (X * -1);
 else
  return X;
}
