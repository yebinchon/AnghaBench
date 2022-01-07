
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_counters {int dummy; } ;
struct mlx5_ib_mcounters {struct ib_counters ibcntrs; int mcntrs_mutex; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 struct ib_counters* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct mlx5_ib_mcounters* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct ib_counters *mlx5_ib_create_counters(struct ib_device *device,
         struct uverbs_attr_bundle *attrs)
{
 struct mlx5_ib_mcounters *mcounters;

 mcounters = kzalloc(sizeof(*mcounters), GFP_KERNEL);
 if (!mcounters)
  return ERR_PTR(-ENOMEM);

 mutex_init(&mcounters->mcntrs_mutex);

 return &mcounters->ibcntrs;
}
