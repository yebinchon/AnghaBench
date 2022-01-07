
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alps_protocol_info {int dummy; } ;
struct alps_model_info {struct alps_protocol_info const protocol_info; int signature; } ;


 int ARRAY_SIZE (struct alps_model_info*) ;
 struct alps_model_info* alps_model_data ;
 int memcmp (unsigned char*,int ,int) ;

__attribute__((used)) static const struct alps_protocol_info *alps_match_table(unsigned char *e7,
        unsigned char *ec)
{
 const struct alps_model_info *model;
 int i;

 for (i = 0; i < ARRAY_SIZE(alps_model_data); i++) {
  model = &alps_model_data[i];

  if (!memcmp(e7, model->signature, sizeof(model->signature)))
   return &model->protocol_info;
 }

 return ((void*)0);
}
