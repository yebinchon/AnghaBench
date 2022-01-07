; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_alloc_etr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_alloc_etr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_buf = type { i32 }
%struct.tmc_drvdata = type { i32 }
%struct.perf_event = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@TMC_ETR_PERF_MIN_BUF_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.etr_buf* (%struct.tmc_drvdata*, %struct.perf_event*, i32, i8**, i32)* @alloc_etr_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.etr_buf* @alloc_etr_buf(%struct.tmc_drvdata* %0, %struct.perf_event* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca %struct.etr_buf*, align 8
  %7 = alloca %struct.tmc_drvdata*, align 8
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.etr_buf*, align 8
  %14 = alloca i64, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %7, align 8
  store %struct.perf_event* %1, %struct.perf_event** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @NUMA_NO_NODE, align 4
  br label %26

21:                                               ; preds = %5
  %22 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_node(i32 %24)
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %21 ]
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %32 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %12, align 4
  %42 = call %struct.etr_buf* @tmc_alloc_etr_buf(%struct.tmc_drvdata* %36, i64 %40, i32 0, i32 %41, i32* null)
  store %struct.etr_buf* %42, %struct.etr_buf** %13, align 8
  %43 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %44 = call i32 @IS_ERR(%struct.etr_buf* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %73

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %50 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %65, %48
  %54 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.etr_buf* @tmc_alloc_etr_buf(%struct.tmc_drvdata* %54, i64 %55, i32 0, i32 %56, i32* null)
  store %struct.etr_buf* %57, %struct.etr_buf** %13, align 8
  %58 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %59 = call i32 @IS_ERR(%struct.etr_buf* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %73

62:                                               ; preds = %53
  %63 = load i64, i64* %14, align 8
  %64 = udiv i64 %63, 2
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @TMC_ETR_PERF_MIN_BUF_SIZE, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %53, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.etr_buf* @ERR_PTR(i32 %71)
  store %struct.etr_buf* %72, %struct.etr_buf** %6, align 8
  br label %75

73:                                               ; preds = %61, %46
  %74 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  store %struct.etr_buf* %74, %struct.etr_buf** %6, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = load %struct.etr_buf*, %struct.etr_buf** %6, align 8
  ret %struct.etr_buf* %76
}

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.etr_buf* @tmc_alloc_etr_buf(%struct.tmc_drvdata*, i64, i32, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.etr_buf*) #1

declare dso_local %struct.etr_buf* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
