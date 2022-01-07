
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tpt_table; int qid_table; int pdid_table; int srq_table; } ;
struct c4iw_rdev {TYPE_1__ resource; } ;


 int C4IW_ID_TABLE_F_RANDOM ;
 int ENOMEM ;
 int c4iw_id_table_alloc (int *,int ,int,int,int ) ;
 int c4iw_id_table_free (int *) ;
 int c4iw_init_qid_table (struct c4iw_rdev*) ;

int c4iw_init_resource(struct c4iw_rdev *rdev, u32 nr_tpt,
         u32 nr_pdid, u32 nr_srqt)
{
 int err = 0;
 err = c4iw_id_table_alloc(&rdev->resource.tpt_table, 0, nr_tpt, 1,
     C4IW_ID_TABLE_F_RANDOM);
 if (err)
  goto tpt_err;
 err = c4iw_init_qid_table(rdev);
 if (err)
  goto qid_err;
 err = c4iw_id_table_alloc(&rdev->resource.pdid_table, 0,
     nr_pdid, 1, 0);
 if (err)
  goto pdid_err;
 if (!nr_srqt)
  err = c4iw_id_table_alloc(&rdev->resource.srq_table, 0,
       1, 1, 0);
 else
  err = c4iw_id_table_alloc(&rdev->resource.srq_table, 0,
       nr_srqt, 0, 0);
 if (err)
  goto srq_err;
 return 0;
 srq_err:
 c4iw_id_table_free(&rdev->resource.pdid_table);
 pdid_err:
 c4iw_id_table_free(&rdev->resource.qid_table);
 qid_err:
 c4iw_id_table_free(&rdev->resource.tpt_table);
 tpt_err:
 return -ENOMEM;
}
