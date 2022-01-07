
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raid10_far_copies (int) ;
 int __raid10_near_copies (int) ;
 unsigned int max (int ,int ) ;

__attribute__((used)) static unsigned int raid10_md_layout_to_copies(int layout)
{
 return max(__raid10_near_copies(layout), __raid10_far_copies(layout));
}
