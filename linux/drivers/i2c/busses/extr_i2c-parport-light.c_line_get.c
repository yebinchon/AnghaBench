
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lineop {int val; scalar_t__ inverted; int port; } ;


 int port_read (int ) ;

__attribute__((used)) static inline int line_get(const struct lineop *op)
{
 u8 oldval = port_read(op->port);

 return ((op->inverted && (oldval & op->val) != op->val)
     || (!op->inverted && (oldval & op->val) == op->val));
}
