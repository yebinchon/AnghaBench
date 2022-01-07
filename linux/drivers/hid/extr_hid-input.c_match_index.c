
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int dummy; } ;



__attribute__((used)) static bool match_index(struct hid_usage *usage,
   unsigned int cur_idx, unsigned int idx)
{
 return cur_idx == idx;
}
