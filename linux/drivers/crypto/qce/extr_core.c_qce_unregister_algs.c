
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int dummy; } ;
struct qce_algo_ops {int (* unregister_algs ) (struct qce_device*) ;} ;


 int ARRAY_SIZE (struct qce_algo_ops**) ;
 struct qce_algo_ops** qce_ops ;
 int stub1 (struct qce_device*) ;

__attribute__((used)) static void qce_unregister_algs(struct qce_device *qce)
{
 const struct qce_algo_ops *ops;
 int i;

 for (i = 0; i < ARRAY_SIZE(qce_ops); i++) {
  ops = qce_ops[i];
  ops->unregister_algs(qce);
 }
}
