
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
calc(int blanks, int blanke, int total, int line)
{
 if (blanke >= blanks) {
  if (line >= blanks)
   line -= total;
 } else {
  if (line >= blanks)
   line -= total;
  line -= blanke + 1;
 }
 return line;
}
