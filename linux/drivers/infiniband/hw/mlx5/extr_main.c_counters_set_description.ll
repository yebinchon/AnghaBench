; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_counters_set_description.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_counters_set_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_counters = type { i32 }
%struct.mlx5_ib_flow_counters_desc = type { i64, i32 }
%struct.mlx5_ib_mcounters = type { i32, i32, i32, i32, %struct.mlx5_ib_flow_counters_desc*, i32, i32 }

@MLX5_IB_COUNTERS_FLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@read_flow_counters = common dso_local global i32 0, align 4
@FLOW_COUNTERS_NUM = common dso_local global i32 0, align 4
@IB_COUNTER_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_counters*, i32, %struct.mlx5_ib_flow_counters_desc*, i32)* @counters_set_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counters_set_description(%struct.ib_counters* %0, i32 %1, %struct.mlx5_ib_flow_counters_desc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_counters*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_flow_counters_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_ib_mcounters*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_counters* %0, %struct.ib_counters** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx5_ib_flow_counters_desc* %2, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ib_counters*, %struct.ib_counters** %6, align 8
  %14 = call %struct.mlx5_ib_mcounters* @to_mcounters(%struct.ib_counters* %13)
  store %struct.mlx5_ib_mcounters* %14, %struct.mlx5_ib_mcounters** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MLX5_IB_COUNTERS_FLOW, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %84

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %10, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @read_flow_counters, align 4
  %26 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %10, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @FLOW_COUNTERS_NUM, align 4
  %29 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %10, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %10, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %68, %21
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %39, i64 %41
  %43 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IB_COUNTER_BYTES, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %84

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %52, i64 %54
  %56 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %51, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %60, i64 %62
  %64 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %59, %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %34

71:                                               ; preds = %34
  %72 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %10, align 8
  %73 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %72, i32 0, i32 3
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %8, align 8
  %76 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %10, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %76, i32 0, i32 4
  store %struct.mlx5_ib_flow_counters_desc* %75, %struct.mlx5_ib_flow_counters_desc** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %10, align 8
  %80 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %10, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %81, i32 0, i32 3
  %83 = call i32 @mutex_unlock(i32* %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %71, %47, %18
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.mlx5_ib_mcounters* @to_mcounters(%struct.ib_counters*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
