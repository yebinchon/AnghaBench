; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { i32, i32, i32, i32 }
%struct.host1x_job = type { %struct.TYPE_2__*, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.host1x = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_cdma_end(%struct.host1x_cdma* %0, %struct.host1x_job* %1) #0 {
  %3 = alloca %struct.host1x_cdma*, align 8
  %4 = alloca %struct.host1x_job*, align 8
  %5 = alloca %struct.host1x*, align 8
  %6 = alloca i32, align 4
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %3, align 8
  store %struct.host1x_job* %1, %struct.host1x_job** %4, align 8
  %7 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %8 = call %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma* %7)
  store %struct.host1x* %8, %struct.host1x** %5, align 8
  %9 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %10 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %9, i32 0, i32 1
  %11 = call i32 @list_empty(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.host1x*, %struct.host1x** %5, align 8
  %13 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %14 = call i32 @host1x_hw_cdma_flush(%struct.host1x* %12, %struct.host1x_cdma* %13)
  %15 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %16 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %19 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %21 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %24 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %26 = call i32 @host1x_job_get(%struct.host1x_job* %25)
  %27 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %28 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %27, i32 0, i32 2
  %29 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %30 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %29, i32 0, i32 1
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %33 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %41 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %42 = call i32 @cdma_start_timer_locked(%struct.host1x_cdma* %40, %struct.host1x_job* %41)
  br label %43

43:                                               ; preds = %39, %36, %2
  %44 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %45 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_name(i32 %48)
  %50 = call i32 @trace_host1x_cdma_end(i32 %49)
  %51 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %52 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  ret void
}

declare dso_local %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @host1x_hw_cdma_flush(%struct.host1x*, %struct.host1x_cdma*) #1

declare dso_local i32 @host1x_job_get(%struct.host1x_job*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cdma_start_timer_locked(%struct.host1x_cdma*, %struct.host1x_job*) #1

declare dso_local i32 @trace_host1x_cdma_end(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
