
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct validate_op {int list; } ;
struct nouveau_cli {int dummy; } ;
struct nouveau_channel {int dummy; } ;
struct drm_nouveau_gem_pushbuf_bo {int dummy; } ;
struct drm_file {int dummy; } ;


 int ERESTARTSYS ;
 int INIT_LIST_HEAD (int *) ;
 int NV_PRINTK (int ,struct nouveau_cli*,char*) ;
 int err ;
 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 scalar_t__ unlikely (int) ;
 int validate_fini (struct validate_op*,struct nouveau_channel*,int *,int *) ;
 int validate_init (struct nouveau_channel*,struct drm_file*,struct drm_nouveau_gem_pushbuf_bo*,int,struct validate_op*) ;
 int validate_list (struct nouveau_channel*,struct nouveau_cli*,int *,struct drm_nouveau_gem_pushbuf_bo*,int ) ;

__attribute__((used)) static int
nouveau_gem_pushbuf_validate(struct nouveau_channel *chan,
        struct drm_file *file_priv,
        struct drm_nouveau_gem_pushbuf_bo *pbbo,
        uint64_t user_buffers, int nr_buffers,
        struct validate_op *op, int *apply_relocs)
{
 struct nouveau_cli *cli = nouveau_cli(file_priv);
 int ret;

 INIT_LIST_HEAD(&op->list);

 if (nr_buffers == 0)
  return 0;

 ret = validate_init(chan, file_priv, pbbo, nr_buffers, op);
 if (unlikely(ret)) {
  if (ret != -ERESTARTSYS)
   NV_PRINTK(err, cli, "validate_init\n");
  return ret;
 }

 ret = validate_list(chan, cli, &op->list, pbbo, user_buffers);
 if (unlikely(ret < 0)) {
  if (ret != -ERESTARTSYS)
   NV_PRINTK(err, cli, "validating bo list\n");
  validate_fini(op, chan, ((void*)0), ((void*)0));
  return ret;
 }
 *apply_relocs = ret;
 return 0;
}
