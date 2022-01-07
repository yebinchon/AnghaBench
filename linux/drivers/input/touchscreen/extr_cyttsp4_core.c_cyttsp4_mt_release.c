
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyttsp4_mt_data {int input; } ;


 int input_set_drvdata (int ,int *) ;
 int input_unregister_device (int ) ;

__attribute__((used)) static void cyttsp4_mt_release(struct cyttsp4_mt_data *md)
{
 input_unregister_device(md->input);
 input_set_drvdata(md->input, ((void*)0));
}
