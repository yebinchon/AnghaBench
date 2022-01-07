; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_ib_process_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_ib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@vport_counters = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad_hdr* %5, i64 %6, %struct.ib_mad_hdr* %7, i64* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_wc*, align 8
  %16 = alloca %struct.ib_grh*, align 8
  %17 = alloca %struct.ib_mad_hdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ib_mad_hdr*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.mlx5_ib_dev*, align 8
  %23 = alloca %struct.ib_mad*, align 8
  %24 = alloca %struct.ib_mad*, align 8
  %25 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %15, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %16, align 8
  store %struct.ib_mad_hdr* %5, %struct.ib_mad_hdr** %17, align 8
  store i64 %6, i64* %18, align 8
  store %struct.ib_mad_hdr* %7, %struct.ib_mad_hdr** %19, align 8
  store i64* %8, i64** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %27 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %26)
  store %struct.mlx5_ib_dev* %27, %struct.mlx5_ib_dev** %22, align 8
  %28 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %29 = bitcast %struct.ib_mad_hdr* %28 to %struct.ib_mad*
  store %struct.ib_mad* %29, %struct.ib_mad** %23, align 8
  %30 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %19, align 8
  %31 = bitcast %struct.ib_mad_hdr* %30 to %struct.ib_mad*
  store %struct.ib_mad* %31, %struct.ib_mad** %24, align 8
  %32 = load i64, i64* %18, align 8
  %33 = icmp ne i64 %32, 24
  br i1 %33, label %38, label %34

34:                                               ; preds = %10
  %35 = load i64*, i64** %20, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 24
  br label %38

38:                                               ; preds = %34, %10
  %39 = phi i1 [ true, %10 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %44, i32* %11, align 4
  br label %87

45:                                               ; preds = %38
  %46 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %47 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %22, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @vport_counters, align 4
  %54 = call i64 @MLX5_CAP_GEN(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %45
  %57 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %58 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %65 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %22, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %74 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %75 = call i32 @process_pma_cmd(%struct.mlx5_ib_dev* %71, i32 %72, %struct.ib_mad* %73, %struct.ib_mad* %74)
  store i32 %75, i32* %25, align 4
  br label %85

76:                                               ; preds = %63, %56, %45
  %77 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %81 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %82 = load %struct.ib_mad*, %struct.ib_mad** %23, align 8
  %83 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %84 = call i32 @process_mad(%struct.ib_device* %77, i32 %78, i32 %79, %struct.ib_wc* %80, %struct.ib_grh* %81, %struct.ib_mad* %82, %struct.ib_mad* %83)
  store i32 %84, i32* %25, align 4
  br label %85

85:                                               ; preds = %76, %70
  %86 = load i32, i32* %25, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %85, %43
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @process_pma_cmd(%struct.mlx5_ib_dev*, i32, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @process_mad(%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
