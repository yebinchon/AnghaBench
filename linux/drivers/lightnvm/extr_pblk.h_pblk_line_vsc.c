
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line {int * vsc; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int pblk_line_vsc(struct pblk_line *line)
{
 return le32_to_cpu(*line->vsc);
}
