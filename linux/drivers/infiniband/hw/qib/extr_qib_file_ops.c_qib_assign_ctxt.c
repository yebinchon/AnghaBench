
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qib_user_info {int spu_userversion; unsigned int spu_port_alg; scalar_t__ spu_subctxt_cnt; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int dd; } ;
struct TYPE_3__ {unsigned int nr_cpus_allowed; int cpus_ptr; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned int QIB_PORT_ALG_ACROSS ;
 unsigned int QIB_PORT_ALG_COUNT ;
 int QIB_USER_MINOR_BASE ;
 unsigned int QIB_USER_SWMAJOR ;
 int assign_ctxt_affinity (struct file*,int ) ;
 unsigned int cpumask_first (int ) ;
 TYPE_2__* ctxt_fp (struct file*) ;
 TYPE_1__* current ;
 int do_qib_user_sdma_queue_create (struct file*) ;
 int file_inode (struct file*) ;
 int find_free_ctxt (int,struct file*,struct qib_user_info const*) ;
 int find_hca (unsigned int const,int*) ;
 int find_shared_ctxt (struct file*,struct qib_user_info const*) ;
 int get_a_ctxt (struct file*,struct qib_user_info const*,unsigned int) ;
 int iminor (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ qib_compatible_subctxts (unsigned int,unsigned int) ;
 int qib_cpulist ;
 int qib_mutex ;
 int test_bit (unsigned int const,int ) ;

__attribute__((used)) static int qib_assign_ctxt(struct file *fp, const struct qib_user_info *uinfo)
{
 int ret;
 int i_minor;
 unsigned swmajor, swminor, alg = QIB_PORT_ALG_ACROSS;


 if (ctxt_fp(fp)) {
  ret = -EINVAL;
  goto done;
 }


 swmajor = uinfo->spu_userversion >> 16;
 if (swmajor != QIB_USER_SWMAJOR) {
  ret = -ENODEV;
  goto done;
 }

 swminor = uinfo->spu_userversion & 0xffff;

 if (swminor >= 11 && uinfo->spu_port_alg < QIB_PORT_ALG_COUNT)
  alg = uinfo->spu_port_alg;

 mutex_lock(&qib_mutex);

 if (qib_compatible_subctxts(swmajor, swminor) &&
     uinfo->spu_subctxt_cnt) {
  ret = find_shared_ctxt(fp, uinfo);
  if (ret > 0) {
   ret = do_qib_user_sdma_queue_create(fp);
   if (!ret)
    assign_ctxt_affinity(fp, (ctxt_fp(fp))->dd);
   goto done_ok;
  }
 }

 i_minor = iminor(file_inode(fp)) - QIB_USER_MINOR_BASE;
 if (i_minor)
  ret = find_free_ctxt(i_minor - 1, fp, uinfo);
 else {
  int unit;
  const unsigned int cpu = cpumask_first(current->cpus_ptr);
  const unsigned int weight = current->nr_cpus_allowed;

  if (weight == 1 && !test_bit(cpu, qib_cpulist))
   if (!find_hca(cpu, &unit) && unit >= 0)
    if (!find_free_ctxt(unit, fp, uinfo)) {
     ret = 0;
     goto done_chk_sdma;
    }
  ret = get_a_ctxt(fp, uinfo, alg);
 }

done_chk_sdma:
 if (!ret)
  ret = do_qib_user_sdma_queue_create(fp);
done_ok:
 mutex_unlock(&qib_mutex);

done:
 return ret;
}
