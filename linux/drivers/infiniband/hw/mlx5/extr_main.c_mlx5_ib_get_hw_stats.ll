; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_get_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_get_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_hw_stats = type { i64 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_counters = type { i32, i32, i32, i64, i32 }
%struct.mlx5_core_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@rx_icrc_encapsulated_counter = common dso_local global i32 0, align 4
@cc_query_allowed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i64, i32)* @mlx5_ib_get_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_get_hw_stats(%struct.ib_device* %0, %struct.rdma_hw_stats* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.rdma_hw_stats*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_ib_counters*, align 8
  %12 = alloca %struct.mlx5_core_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.rdma_hw_stats* %1, %struct.rdma_hw_stats** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %17 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %16)
  store %struct.mlx5_ib_dev* %17, %struct.mlx5_ib_dev** %10, align 8
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call %struct.mlx5_ib_counters* @get_counters(%struct.mlx5_ib_dev* %18, i64 %20)
  store %struct.mlx5_ib_counters* %21, %struct.mlx5_ib_counters** %11, align 8
  %22 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %23 = icmp ne %struct.rdma_hw_stats* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %118

27:                                               ; preds = %4
  %28 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %14, align 4
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %43 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %44 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mlx5_ib_query_q_counters(i32 %41, %struct.mlx5_ib_counters* %42, %struct.rdma_hw_stats* %43, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %27
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %5, align 4
  br label %118

52:                                               ; preds = %27
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @rx_icrc_encapsulated_counter, align 4
  %57 = call i64 @MLX5_CAP_PCAM_FEATURE(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %61 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %62 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %63 = call i32 @mlx5_ib_query_ext_ppcnt_counters(%struct.mlx5_ib_dev* %60, %struct.mlx5_ib_counters* %61, %struct.rdma_hw_stats* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %118

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @cc_query_allowed, align 4
  %74 = call i64 @MLX5_CAP_GEN(i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %69
  %77 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev* %77, i64 %78, i64* %15)
  store %struct.mlx5_core_dev* %79, %struct.mlx5_core_dev** %12, align 8
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %81 = icmp ne %struct.mlx5_core_dev* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %116

83:                                               ; preds = %76
  %84 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %85 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %88 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %91 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %96 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mlx5_ib_counters*, %struct.mlx5_ib_counters** %11, align 8
  %102 = getelementptr inbounds %struct.mlx5_ib_counters, %struct.mlx5_ib_counters* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %100, %104
  %106 = call i32 @mlx5_lag_query_cong_counters(i32 %86, i64 %94, i32 %97, i64 %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %107, i64 %108)
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %83
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %5, align 4
  br label %118

114:                                              ; preds = %83
  br label %115

115:                                              ; preds = %114, %69
  br label %116

116:                                              ; preds = %115, %82
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %112, %66, %50, %24
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx5_ib_counters* @get_counters(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @mlx5_ib_query_q_counters(i32, %struct.mlx5_ib_counters*, %struct.rdma_hw_stats*, i32) #1

declare dso_local i64 @MLX5_CAP_PCAM_FEATURE(i32, i32) #1

declare dso_local i32 @mlx5_ib_query_ext_ppcnt_counters(%struct.mlx5_ib_dev*, %struct.mlx5_ib_counters*, %struct.rdma_hw_stats*) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev*, i64, i64*) #1

declare dso_local i32 @mlx5_lag_query_cong_counters(i32, i64, i32, i64) #1

declare dso_local i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
