
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct geode_aes_op {scalar_t__ len; scalar_t__ dir; scalar_t__ mode; int flags; int iv; int dst; int src; int key; } ;


 int AES_CTRL_CBC ;
 int AES_CTRL_DCA ;
 int AES_CTRL_ENCRYPT ;
 int AES_CTRL_SCA ;
 int AES_CTRL_WRKEY ;
 scalar_t__ AES_DIR_ENCRYPT ;
 int AES_FLAGS_HIDDENKEY ;
 scalar_t__ AES_MODE_CBC ;
 int AES_WRITEIV0_REG ;
 int AES_WRITEKEY0_REG ;
 int BUG_ON (int) ;
 int _readfield (int ,int ) ;
 int _writefield (int ,int ) ;
 int do_crypt (int ,int ,scalar_t__,int) ;
 int lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int
geode_aes_crypt(struct geode_aes_op *op)
{
 u32 flags = 0;
 unsigned long iflags;
 int ret;

 if (op->len == 0)
  return 0;






 flags |= (AES_CTRL_DCA | AES_CTRL_SCA);

 if (op->dir == AES_DIR_ENCRYPT)
  flags |= AES_CTRL_ENCRYPT;



 spin_lock_irqsave(&lock, iflags);

 if (op->mode == AES_MODE_CBC) {
  flags |= AES_CTRL_CBC;
  _writefield(AES_WRITEIV0_REG, op->iv);
 }

 if (!(op->flags & AES_FLAGS_HIDDENKEY)) {
  flags |= AES_CTRL_WRKEY;
  _writefield(AES_WRITEKEY0_REG, op->key);
 }

 ret = do_crypt(op->src, op->dst, op->len, flags);
 BUG_ON(ret);

 if (op->mode == AES_MODE_CBC)
  _readfield(AES_WRITEIV0_REG, op->iv);

 spin_unlock_irqrestore(&lock, iflags);

 return op->len;
}
