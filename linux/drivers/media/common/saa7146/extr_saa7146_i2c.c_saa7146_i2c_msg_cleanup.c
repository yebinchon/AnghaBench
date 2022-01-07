
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; int* buf; } ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static int saa7146_i2c_msg_cleanup(const struct i2c_msg *m, int num, __le32 *op)
{
 int i, j;
 int op_count = 0;


 for(i = 0; i < num; i++) {

  op_count++;


  for(j = 0; j < m[i].len; j++) {

   m[i].buf[j] = (le32_to_cpu(op[op_count/3]) >> ((3-(op_count%3))*8));
   op_count++;
  }
 }

 return 0;
}
