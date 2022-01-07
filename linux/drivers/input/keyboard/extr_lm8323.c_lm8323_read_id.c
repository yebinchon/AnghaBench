
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm8323_chip {int dummy; } ;


 int EIO ;
 int LM8323_CMD_READ_ID ;
 int lm8323_read (struct lm8323_chip*,int ,int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int lm8323_read_id(struct lm8323_chip *lm, u8 *buf)
{
 int bytes;

 bytes = lm8323_read(lm, LM8323_CMD_READ_ID, buf, 2);
 if (unlikely(bytes != 2))
  return -EIO;

 return 0;
}
