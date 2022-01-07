
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VC4_BO_TYPE_COUNT ;

__attribute__((used)) static bool is_user_label(int label)
{
 return label >= VC4_BO_TYPE_COUNT;
}
