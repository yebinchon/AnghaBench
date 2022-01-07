
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_head {scalar_t__ height; scalar_t__ width; } ;



__attribute__((used)) static bool qxl_head_enabled(struct qxl_head *head)
{
 return head->width && head->height;
}
