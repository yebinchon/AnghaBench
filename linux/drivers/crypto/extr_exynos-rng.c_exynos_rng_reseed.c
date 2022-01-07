
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct exynos_rng_dev {unsigned long last_seeding; scalar_t__ bytes_seeding; int lock; } ;
typedef int seed ;


 scalar_t__ EXYNOS_RNG_RESEED_BYTES ;
 int EXYNOS_RNG_RESEED_TIME ;
 int EXYNOS_RNG_SEED_SIZE ;
 scalar_t__ exynos_rng_get_random (struct exynos_rng_dev*,int *,int,unsigned int*) ;
 int exynos_rng_set_seed (struct exynos_rng_dev*,int *,unsigned int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void exynos_rng_reseed(struct exynos_rng_dev *rng)
{
 unsigned long next_seeding = rng->last_seeding + msecs_to_jiffies(EXYNOS_RNG_RESEED_TIME);

 unsigned long now = jiffies;
 unsigned int read = 0;
 u8 seed[EXYNOS_RNG_SEED_SIZE];

 if (time_before(now, next_seeding) &&
     rng->bytes_seeding < EXYNOS_RNG_RESEED_BYTES)
  return;

 if (exynos_rng_get_random(rng, seed, sizeof(seed), &read))
  return;

 exynos_rng_set_seed(rng, seed, read);


 mutex_unlock(&rng->lock);
 mutex_lock(&rng->lock);
}
