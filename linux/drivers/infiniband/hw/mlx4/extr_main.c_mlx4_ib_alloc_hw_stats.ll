; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_hw_stats = type { i32 }
%struct.ib_device = type { i32 }
%struct.mlx4_ib_dev = type { %struct.mlx4_ib_diag_counters* }
%struct.mlx4_ib_diag_counters = type { i32, i32 }

@RDMA_HW_STATS_DEFAULT_LIFESPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_hw_stats* (%struct.ib_device*, i32)* @mlx4_ib_alloc_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_hw_stats* @mlx4_ib_alloc_hw_stats(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rdma_hw_stats*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_diag_counters*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %8)
  store %struct.mlx4_ib_dev* %9, %struct.mlx4_ib_dev** %6, align 8
  %10 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %11 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %10, i32 0, i32 0
  %12 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %11, align 8
  store %struct.mlx4_ib_diag_counters* %12, %struct.mlx4_ib_diag_counters** %7, align 8
  %13 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %13, i64 %19
  %21 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store %struct.rdma_hw_stats* null, %struct.rdma_hw_stats** %3, align 8
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %26, i64 %32
  %34 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_ib_diag_counters*, %struct.mlx4_ib_diag_counters** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %36, i64 %42
  %44 = getelementptr inbounds %struct.mlx4_ib_diag_counters, %struct.mlx4_ib_diag_counters* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RDMA_HW_STATS_DEFAULT_LIFESPAN, align 4
  %47 = call %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32 %35, i32 %45, i32 %46)
  store %struct.rdma_hw_stats* %47, %struct.rdma_hw_stats** %3, align 8
  br label %48

48:                                               ; preds = %25, %24
  %49 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %3, align 8
  ret %struct.rdma_hw_stats* %49
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.rdma_hw_stats* @rdma_alloc_hw_stats_struct(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
