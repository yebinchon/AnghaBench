; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_get_perf_etr_buf_cpu_wide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_get_perf_etr_buf_cpu_wide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_buf = type { i32 }
%struct.tmc_drvdata = type { i32, i32 }
%struct.perf_event = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.etr_buf* (%struct.tmc_drvdata*, %struct.perf_event*, i32, i8**, i32)* @get_perf_etr_buf_cpu_wide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.etr_buf* @get_perf_etr_buf_cpu_wide(%struct.tmc_drvdata* %0, %struct.perf_event* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca %struct.etr_buf*, align 8
  %7 = alloca %struct.tmc_drvdata*, align 8
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.etr_buf*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %7, align 8
  store %struct.perf_event* %1, %struct.perf_event** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @task_pid_nr(i32 %17)
  store i64 %18, i64* %13, align 8
  br label %19

19:                                               ; preds = %71, %5
  %20 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %21 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %24 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %23, i32 0, i32 1
  %25 = load i64, i64* %13, align 8
  %26 = call %struct.etr_buf* @idr_find(i32* %24, i64 %25)
  store %struct.etr_buf* %26, %struct.etr_buf** %14, align 8
  %27 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  %28 = icmp ne %struct.etr_buf* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  %31 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %30, i32 0, i32 0
  %32 = call i32 @refcount_inc(i32* %31)
  %33 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %34 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  store %struct.etr_buf* %36, %struct.etr_buf** %6, align 8
  br label %86

37:                                               ; preds = %19
  %38 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %39 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i8**, i8*** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.etr_buf* @alloc_etr_buf(%struct.tmc_drvdata* %41, %struct.perf_event* %42, i32 %43, i8** %44, i32 %45)
  store %struct.etr_buf* %46, %struct.etr_buf** %14, align 8
  %47 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  %48 = call i64 @IS_ERR(%struct.etr_buf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  store %struct.etr_buf* %51, %struct.etr_buf** %6, align 8
  br label %86

52:                                               ; preds = %37
  %53 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %54 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %57 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %56, i32 0, i32 1
  %58 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add nsw i64 %60, 1
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @idr_alloc(i32* %57, %struct.etr_buf* %58, i64 %59, i64 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %65 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  %73 = call i32 @tmc_free_etr_buf(%struct.etr_buf* %72)
  br label %19

74:                                               ; preds = %52
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  %81 = call i32 @tmc_free_etr_buf(%struct.etr_buf* %80)
  %82 = load i32, i32* %12, align 4
  %83 = call %struct.etr_buf* @ERR_PTR(i32 %82)
  store %struct.etr_buf* %83, %struct.etr_buf** %6, align 8
  br label %86

84:                                               ; preds = %74
  %85 = load %struct.etr_buf*, %struct.etr_buf** %14, align 8
  store %struct.etr_buf* %85, %struct.etr_buf** %6, align 8
  br label %86

86:                                               ; preds = %84, %79, %50, %29
  %87 = load %struct.etr_buf*, %struct.etr_buf** %6, align 8
  ret %struct.etr_buf* %87
}

declare dso_local i64 @task_pid_nr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.etr_buf* @idr_find(i32*, i64) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.etr_buf* @alloc_etr_buf(%struct.tmc_drvdata*, %struct.perf_event*, i32, i8**, i32) #1

declare dso_local i64 @IS_ERR(%struct.etr_buf*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.etr_buf*, i64, i64, i32) #1

declare dso_local i32 @tmc_free_etr_buf(%struct.etr_buf*) #1

declare dso_local %struct.etr_buf* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
