; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_free_etr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_free_etr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_perf_buffer = type { %struct.etr_buf*, i32, %struct.tmc_drvdata* }
%struct.etr_buf = type { i32 }
%struct.tmc_drvdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tmc_free_etr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_free_etr_buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.etr_perf_buffer*, align 8
  %4 = alloca %struct.tmc_drvdata*, align 8
  %5 = alloca %struct.etr_buf*, align 8
  %6 = alloca %struct.etr_buf*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.etr_perf_buffer*
  store %struct.etr_perf_buffer* %8, %struct.etr_perf_buffer** %3, align 8
  %9 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %9, i32 0, i32 2
  %11 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %10, align 8
  store %struct.tmc_drvdata* %11, %struct.tmc_drvdata** %4, align 8
  %12 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %12, i32 0, i32 0
  %14 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  store %struct.etr_buf* %14, %struct.etr_buf** %6, align 8
  %15 = load %struct.etr_buf*, %struct.etr_buf** %6, align 8
  %16 = icmp ne %struct.etr_buf* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %4, align 8
  %20 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.etr_buf*, %struct.etr_buf** %6, align 8
  %23 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %22, i32 0, i32 0
  %24 = call i32 @refcount_dec_and_test(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %4, align 8
  %28 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %55

30:                                               ; preds = %18
  %31 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %4, align 8
  %32 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %31, i32 0, i32 1
  %33 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.etr_buf* @idr_remove(i32* %32, i32 %35)
  store %struct.etr_buf* %36, %struct.etr_buf** %5, align 8
  %37 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %4, align 8
  %38 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %41 = icmp ne %struct.etr_buf* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %44 = load %struct.etr_buf*, %struct.etr_buf** %6, align 8
  %45 = icmp ne %struct.etr_buf* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %55

50:                                               ; preds = %42, %30
  %51 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %51, i32 0, i32 0
  %53 = load %struct.etr_buf*, %struct.etr_buf** %52, align 8
  %54 = call i32 @tmc_free_etr_buf(%struct.etr_buf* %53)
  br label %55

55:                                               ; preds = %50, %49, %26, %17
  %56 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %3, align 8
  %57 = call i32 @kfree(%struct.etr_perf_buffer* %56)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.etr_buf* @idr_remove(i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tmc_free_etr_buf(%struct.etr_buf*) #1

declare dso_local i32 @kfree(%struct.etr_perf_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
