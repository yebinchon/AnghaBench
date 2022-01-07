; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_handle_alloc_dm_sw_icm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_handle_alloc_dm_sw_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.mlx5_ib_dm = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_dm_alloc_attr = type { i32 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.TYPE_6__ = type { %struct.mlx5_core_dev* }
%struct.TYPE_5__ = type { i32 }

@MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.mlx5_ib_dm*, %struct.ib_dm_alloc_attr*, %struct.uverbs_attr_bundle*, i32)* @handle_alloc_dm_sw_icm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_alloc_dm_sw_icm(%struct.ib_ucontext* %0, %struct.mlx5_ib_dm* %1, %struct.ib_dm_alloc_attr* %2, %struct.uverbs_attr_bundle* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_ucontext*, align 8
  %8 = alloca %struct.mlx5_ib_dm*, align 8
  %9 = alloca %struct.ib_dm_alloc_attr*, align 8
  %10 = alloca %struct.uverbs_attr_bundle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_core_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %7, align 8
  store %struct.mlx5_ib_dm* %1, %struct.mlx5_ib_dm** %8, align 8
  store %struct.ib_dm_alloc_attr* %2, %struct.ib_dm_alloc_attr** %9, align 8
  store %struct.uverbs_attr_bundle* %3, %struct.uverbs_attr_bundle** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %16 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_6__* @to_mdev(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %19, align 8
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %12, align 8
  %21 = load %struct.ib_dm_alloc_attr*, %struct.ib_dm_alloc_attr** %9, align 8
  %22 = getelementptr inbounds %struct.ib_dm_alloc_attr, %struct.ib_dm_alloc_attr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %25 = call i32 @MLX5_SW_ICM_BLOCK_SIZE(%struct.mlx5_core_dev* %24)
  %26 = call i32 @round_up(i32 %23, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @roundup_pow_of_two(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %36 = call %struct.TYPE_5__* @to_mucontext(%struct.ib_ucontext* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %39, i32 0, i32 1
  %41 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @mlx5_dm_sw_icm_alloc(%struct.mlx5_core_dev* %32, i32 %33, i32 %34, i32 %38, i32* %40, i32* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %6, align 4
  br label %77

49:                                               ; preds = %5
  %50 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %10, align 8
  %51 = load i32, i32* @MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET, align 4
  %52 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %8, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %52, i32 0, i32 1
  %54 = call i32 @uverbs_copy_to(%struct.uverbs_attr_bundle* %50, i32 %51, i32* %53, i32 4)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_ucontext*, %struct.ib_ucontext** %7, align 8
  %64 = call %struct.TYPE_5__* @to_mucontext(%struct.ib_ucontext* %63)
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %8, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %8, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mlx5_dm_sw_icm_dealloc(%struct.mlx5_core_dev* %58, i32 %59, i32 %62, i32 %66, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %57, %49
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %47
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_6__* @to_mdev(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @MLX5_SW_ICM_BLOCK_SIZE(%struct.mlx5_core_dev*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @mlx5_dm_sw_icm_alloc(%struct.mlx5_core_dev*, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @uverbs_copy_to(%struct.uverbs_attr_bundle*, i32, i32*, i32) #1

declare dso_local i32 @mlx5_dm_sw_icm_dealloc(%struct.mlx5_core_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
