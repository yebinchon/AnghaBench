
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *rdwr_str(int rdwr)
{
 return rdwr ? "Write" : "Read";
}
