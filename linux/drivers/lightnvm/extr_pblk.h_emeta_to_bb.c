
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_emeta {void* bb_bitmap; } ;



__attribute__((used)) static inline void *emeta_to_bb(struct line_emeta *emeta)
{
 return emeta->bb_bitmap;
}
