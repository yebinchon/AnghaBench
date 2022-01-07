; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_implicit_mr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_implicit_mr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_mr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32*, %struct.mlx5_ib_dev* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, %struct.ib_pd* }
%struct.mlx5_ib_dev = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_umem_odp = type { i32 }

@MLX5_IMR_KSM_CACHE_ENTRY = common dso_local global i32 0, align 4
@MLX5_IMR_MTT_CACHE_ENTRY = common dso_local global i32 0, align 4
@mlx5_imr_ksm_entries = common dso_local global i32 0, align 4
@MLX5_KSM_PAGE_SHIFT = common dso_local global i32 0, align 4
@MLX5_IB_UPD_XLT_INDIRECT = common dso_local global i32 0, align 4
@MLX5_IB_UPD_XLT_ZAP = common dso_local global i32 0, align 4
@MLX5_IB_UPD_XLT_ENABLE = common dso_local global i32 0, align 4
@MLX5_IMR_MTT_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MLX5_IB_UPD_XLT_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"key %x dev %p mr %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to register MKEY %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_mr* (%struct.ib_pd*, %struct.ib_umem_odp*, i32, i32)* @implicit_mr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_mr* @implicit_mr_alloc(%struct.ib_pd* %0, %struct.ib_umem_odp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_umem_odp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_ib_mr*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store %struct.ib_umem_odp* %1, %struct.ib_umem_odp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlx5_ib_dev* @to_mdev(i32 %15)
  store %struct.mlx5_ib_dev* %16, %struct.mlx5_ib_dev** %10, align 8
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @MLX5_IMR_KSM_CACHE_ENTRY, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @MLX5_IMR_MTT_CACHE_ENTRY, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call %struct.mlx5_ib_mr* @mlx5_mr_cache_alloc(%struct.mlx5_ib_dev* %17, i32 %25)
  store %struct.mlx5_ib_mr* %26, %struct.mlx5_ib_mr** %11, align 8
  %27 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %28 = call i64 @IS_ERR(%struct.mlx5_ib_mr* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  store %struct.mlx5_ib_mr* %31, %struct.mlx5_ib_mr** %5, align 8
  br label %111

32:                                               ; preds = %24
  %33 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %34 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store %struct.ib_pd* %33, %struct.ib_pd** %36, align 8
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %38 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %38, i32 0, i32 4
  store %struct.mlx5_ib_dev* %37, %struct.mlx5_ib_dev** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %7, align 8
  %47 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %46, i32 0, i32 0
  %48 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %32
  %53 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %54 = load i32, i32* @mlx5_imr_ksm_entries, align 4
  %55 = load i32, i32* @MLX5_KSM_PAGE_SHIFT, align 4
  %56 = load i32, i32* @MLX5_IB_UPD_XLT_INDIRECT, align 4
  %57 = load i32, i32* @MLX5_IB_UPD_XLT_ZAP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MLX5_IB_UPD_XLT_ENABLE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @mlx5_ib_update_xlt(%struct.mlx5_ib_mr* %53, i32 0, i32 %54, i32 %55, i32 %60)
  store i32 %61, i32* %12, align 4
  br label %72

62:                                               ; preds = %32
  %63 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %64 = load i32, i32* @MLX5_IMR_MTT_ENTRIES, align 4
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = load i32, i32* @MLX5_IB_UPD_XLT_ZAP, align 4
  %67 = load i32, i32* @MLX5_IB_UPD_XLT_ENABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MLX5_IB_UPD_XLT_ATOMIC, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @mlx5_ib_update_xlt(%struct.mlx5_ib_mr* %63, i32 0, i32 %64, i32 %65, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %62, %52
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %102

76:                                               ; preds = %72
  %77 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %78 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %85 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %92 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %93 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %100 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %98, %struct.mlx5_ib_mr* %99)
  %101 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  store %struct.mlx5_ib_mr* %101, %struct.mlx5_ib_mr** %5, align 8
  br label %111

102:                                              ; preds = %75
  %103 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %107 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %108 = call i32 @mlx5_mr_cache_free(%struct.mlx5_ib_dev* %106, %struct.mlx5_ib_mr* %107)
  %109 = load i32, i32* %12, align 4
  %110 = call %struct.mlx5_ib_mr* @ERR_PTR(i32 %109)
  store %struct.mlx5_ib_mr* %110, %struct.mlx5_ib_mr** %5, align 8
  br label %111

111:                                              ; preds = %102, %76, %30
  %112 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  ret %struct.mlx5_ib_mr* %112
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_mr* @mlx5_mr_cache_alloc(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_ib_mr*) #1

declare dso_local i32 @mlx5_ib_update_xlt(%struct.mlx5_ib_mr*, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, i32, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_mr_cache_free(%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*) #1

declare dso_local %struct.mlx5_ib_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
