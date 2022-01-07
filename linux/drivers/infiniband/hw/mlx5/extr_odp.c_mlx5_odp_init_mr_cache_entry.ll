; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_odp_init_mr_cache_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_odp_init_mr_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cache_ent = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IB_ODP_SUPPORT_IMPLICIT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MLX5_IMR_MTT_ENTRIES = common dso_local global i32 0, align 4
@MLX5_IB_UMR_OCTOWORD = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_MTT = common dso_local global i32 0, align 4
@MLX5_KSM_PAGE_SHIFT = common dso_local global i32 0, align 4
@mlx5_imr_ksm_entries = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_KSM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_odp_init_mr_cache_entry(%struct.mlx5_cache_ent* %0) #0 {
  %2 = alloca %struct.mlx5_cache_ent*, align 8
  store %struct.mlx5_cache_ent* %0, %struct.mlx5_cache_ent** %2, align 8
  %3 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %3, i32 0, i32 5
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IB_ODP_SUPPORT_IMPLICIT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 2
  switch i32 %17, label %54 [
    i32 128, label %18
    i32 129, label %36
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @MLX5_IMR_MTT_ENTRIES, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = load i32, i32* @MLX5_IB_UMR_OCTOWORD, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %24, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @MLX5_MKC_ACCESS_MODE_MTT, align 4
  %32 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %33 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  br label %54

36:                                               ; preds = %13
  %37 = load i32, i32* @MLX5_KSM_PAGE_SHIFT, align 4
  %38 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @mlx5_imr_ksm_entries, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = load i32, i32* @MLX5_IB_UMR_OCTOWORD, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %42, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %48 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @MLX5_MKC_ACCESS_MODE_KSM, align 4
  %50 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %53 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %12, %13, %36, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
