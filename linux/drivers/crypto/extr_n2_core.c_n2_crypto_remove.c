
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct n2_crypto {int cwq_list; } ;


 struct n2_crypto* dev_get_drvdata (int *) ;
 int free_n2cp (struct n2_crypto*) ;
 int n2_unregister_algs () ;
 int release_global_resources () ;
 int spu_list_destroy (int *) ;

__attribute__((used)) static int n2_crypto_remove(struct platform_device *dev)
{
 struct n2_crypto *np = dev_get_drvdata(&dev->dev);

 n2_unregister_algs();

 spu_list_destroy(&np->cwq_list);

 release_global_resources();

 free_n2cp(np);

 return 0;
}
