
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9950_glue {int data; int (* exit ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void tda9950_devm_glue_exit(void *data)
{
 struct tda9950_glue *glue = data;

 if (glue && glue->exit)
  glue->exit(glue->data);
}
