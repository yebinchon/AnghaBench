; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_read_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_read_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_counters = type { i32 }
%struct.ib_counters_read_attr = type { i64, i32*, i32 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.mlx5_ib_mcounters = type { i64, i32 (i32, %struct.mlx5_read_counters_attr*)*, i32, i32, %struct.mlx5_ib_flow_counters_desc*, i32, i32 }
%struct.mlx5_read_counters_attr = type { i64*, i32, i32 }
%struct.mlx5_ib_flow_counters_desc = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_counters*, %struct.ib_counters_read_attr*, %struct.uverbs_attr_bundle*)* @mlx5_ib_read_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_read_counters(%struct.ib_counters* %0, %struct.ib_counters_read_attr* %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca %struct.ib_counters*, align 8
  %5 = alloca %struct.ib_counters_read_attr*, align 8
  %6 = alloca %struct.uverbs_attr_bundle*, align 8
  %7 = alloca %struct.mlx5_ib_mcounters*, align 8
  %8 = alloca %struct.mlx5_read_counters_attr, align 8
  %9 = alloca %struct.mlx5_ib_flow_counters_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_counters* %0, %struct.ib_counters** %4, align 8
  store %struct.ib_counters_read_attr* %1, %struct.ib_counters_read_attr** %5, align 8
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %6, align 8
  %12 = load %struct.ib_counters*, %struct.ib_counters** %4, align 8
  %13 = call %struct.mlx5_ib_mcounters* @to_mcounters(%struct.ib_counters* %12)
  store %struct.mlx5_ib_mcounters* %13, %struct.mlx5_ib_mcounters** %7, align 8
  %14 = bitcast %struct.mlx5_read_counters_attr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ib_counters_read_attr*, %struct.ib_counters_read_attr** %5, align 8
  %22 = getelementptr inbounds %struct.ib_counters_read_attr, %struct.ib_counters_read_attr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %103

28:                                               ; preds = %3
  %29 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i64* @kcalloc(i32 %31, i32 4, i32 %32)
  %34 = getelementptr inbounds %struct.mlx5_read_counters_attr, %struct.mlx5_read_counters_attr* %8, i32 0, i32 0
  store i64* %33, i64** %34, align 8
  %35 = getelementptr inbounds %struct.mlx5_read_counters_attr, %struct.mlx5_read_counters_attr* %8, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %103

41:                                               ; preds = %28
  %42 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.mlx5_read_counters_attr, %struct.mlx5_read_counters_attr* %8, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ib_counters_read_attr*, %struct.ib_counters_read_attr** %5, align 8
  %47 = getelementptr inbounds %struct.ib_counters_read_attr, %struct.ib_counters_read_attr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.mlx5_read_counters_attr, %struct.mlx5_read_counters_attr* %8, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %7, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %50, i32 0, i32 1
  %52 = load i32 (i32, %struct.mlx5_read_counters_attr*)*, i32 (i32, %struct.mlx5_read_counters_attr*)** %51, align 8
  %53 = load %struct.ib_counters*, %struct.ib_counters** %4, align 8
  %54 = getelementptr inbounds %struct.ib_counters, %struct.ib_counters* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %52(i32 %55, %struct.mlx5_read_counters_attr* %8)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  br label %99

60:                                               ; preds = %41
  %61 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %7, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %61, i32 0, i32 4
  %63 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %62, align 8
  store %struct.mlx5_ib_flow_counters_desc* %63, %struct.mlx5_ib_flow_counters_desc** %9, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %95, %60
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.mlx5_read_counters_attr, %struct.mlx5_read_counters_attr* %8, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %73, i64 %75
  %77 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %72, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ib_counters_read_attr*, %struct.ib_counters_read_attr** %5, align 8
  %82 = getelementptr inbounds %struct.ib_counters_read_attr, %struct.ib_counters_read_attr* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.mlx5_ib_flow_counters_desc*, %struct.mlx5_ib_flow_counters_desc** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %84, i64 %86
  %88 = getelementptr inbounds %struct.mlx5_ib_flow_counters_desc, %struct.mlx5_ib_flow_counters_desc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %80
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %95

95:                                               ; preds = %70
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %64

98:                                               ; preds = %64
  br label %99

99:                                               ; preds = %98, %59
  %100 = getelementptr inbounds %struct.mlx5_read_counters_attr, %struct.mlx5_read_counters_attr* %8, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = call i32 @kfree(i64* %101)
  br label %103

103:                                              ; preds = %99, %38, %25
  %104 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %7, align 8
  %105 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %104, i32 0, i32 3
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local %struct.mlx5_ib_mcounters* @to_mcounters(%struct.ib_counters*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
