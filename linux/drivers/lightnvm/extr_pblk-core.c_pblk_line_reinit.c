
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line {int * emeta; int * smeta; int * invalid_bitmap; int * map_bitmap; int * vsc; } ;


 int EMPTY_ENTRY ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void pblk_line_reinit(struct pblk_line *line)
{
 *line->vsc = cpu_to_le32(EMPTY_ENTRY);

 line->map_bitmap = ((void*)0);
 line->invalid_bitmap = ((void*)0);
 line->smeta = ((void*)0);
 line->emeta = ((void*)0);
}
