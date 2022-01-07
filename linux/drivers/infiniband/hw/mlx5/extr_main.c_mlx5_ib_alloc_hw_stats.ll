; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_alloc_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_alloc_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_hw_stats = type { i32 }
%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_counters = type { i64, i64, i64, i32 }

@RDMA_HW_STATS_DEFAULT_LIFESPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_hw_stats* (%struct.ib_device*, i64)* @mlx5_ib_alloc_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_hw_stats* @mlx5_ib_alloc_hw_stats(%struct.ib_device* %0, i64 %1) #0 {
  %3 = alloca %struct.rdma_hw_stats*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_counters*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %6, align 8
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @is_mdev_switchdev_mode(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %17
  store %struct.rdma_hw_stats* null, %struct.rdma_hw_stats** %3, align 8
  br label %48

27:                                               ; preds = %23, %20
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call %struct.mlx5_ib_counters* @get_counters(%struct.mlx5_ib_dev* %28, i64 %30)
  store %struct.mlx5_ib_counters* %31, %struct.mlx5_ib_counters** %7, align 8
  %32 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %7, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load i32, i32* @RDMA_HW_STATS_DEFAULT_LIFESPAN, align 4
  %47 = call %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32 %34, i64 %45, i32 %46)
  store %struct.rdma_hw_stats* %47, %struct.rdma_hw_stats** %3, align 8
  br label %48

48:                                               ; preds = %27, %26
  %49 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %3, align 8
  ret %struct.rdma_hw_stats* %49
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @is_mdev_switchdev_mode(i32) #1

declare dso_local %struct.mlx5_ib_counters* @get_counters(%struct.mlx5_ib_dev*, i64) #1

declare dso_local %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
