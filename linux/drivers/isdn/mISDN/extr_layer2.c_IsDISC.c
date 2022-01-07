
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DISC ;

inline int
IsDISC(u_char *data)
{
 return (data[0] & 0xef) == DISC;
}
