
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2pp_info {int member_0; int member_2; unsigned char model; int const member_1; } ;


 int ARRAY_SIZE (struct ps2pp_info const*) ;
__attribute__((used)) static const struct ps2pp_info *get_model_info(unsigned char model)
{
 static const struct ps2pp_info ps2pp_list[] = {
  { 1, 0, 0 },
  { 12, 0, 130},
  { 13, 0, 0 },
  { 15, 135,
    128 | 130 | 129 |
    137 | 131 | 136 },
  { 40, 0, 130 },
  { 41, 0, 130 },
  { 42, 0, 130 },
  { 43, 0, 130 },
  { 50, 0, 0 },
  { 51, 0, 0 },
  { 52, 132, 130 | 128 },
  { 53, 132, 128 },
  { 56, 132, 130 | 128 },
  { 61, 135,
    128 | 130 | 129 |
    137 | 131 },
  { 66, 135,
    128 | 130 | 129 |
    137 | 131 | 136 },
  { 72, 133, 0 },
  { 73, 133, 130 },
  { 75, 132, 128 },
  { 76, 132, 128 },
  { 79, 133, 128 },
  { 80, 132, 130 | 128 },
  { 81, 132, 128 },
  { 83, 132, 128 },
  { 85, 132, 128 },
  { 86, 132, 128 },
  { 87, 132, 128 },
  { 88, 132, 128 },
  { 96, 0, 0 },
  { 97, 134, 128 | 136 },
  { 99, 132, 128 },
  { 100, 135,
    128 | 130 | 129 |
    137 | 131 },
  { 111, 135, 128 | 130 },
  { 112, 135,
    128 | 130 | 129 |
    137 | 131 },
  { 114, 135,
    128 | 130 |
    129 | 137 }
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(ps2pp_list); i++)
  if (model == ps2pp_list[i].model)
   return &ps2pp_list[i];

 return ((void*)0);
}
