; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { %struct.TYPE_5__, i32, i64, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.host1x_job = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.host1x = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_cdma_begin(%struct.host1x_cdma* %0, %struct.host1x_job* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.host1x_cdma*, align 8
  %5 = alloca %struct.host1x_job*, align 8
  %6 = alloca %struct.host1x*, align 8
  %7 = alloca i32, align 4
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %4, align 8
  store %struct.host1x_job* %1, %struct.host1x_job** %5, align 8
  %8 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %9 = call %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma* %8)
  store %struct.host1x* %9, %struct.host1x** %6, align 8
  %10 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %11 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %10, i32 0, i32 5
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.host1x_job*, %struct.host1x_job** %5, align 8
  %14 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %19 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %17
  %24 = load %struct.host1x*, %struct.host1x** %6, align 8
  %25 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %26 = load %struct.host1x_job*, %struct.host1x_job** %5, align 8
  %27 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @host1x_hw_cdma_timeout_init(%struct.host1x* %24, %struct.host1x_cdma* %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %34 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %33, i32 0, i32 5
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %66

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %41 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.host1x*, %struct.host1x** %6, align 8
  %46 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %47 = call i32 @host1x_hw_cdma_start(%struct.host1x* %45, %struct.host1x_cdma* %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %50 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %52 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %54 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %58 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.host1x_job*, %struct.host1x_job** %5, align 8
  %60 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_name(i32 %63)
  %65 = call i32 @trace_host1x_cdma_begin(i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %48, %32
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @host1x_hw_cdma_timeout_init(%struct.host1x*, %struct.host1x_cdma*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @host1x_hw_cdma_start(%struct.host1x*, %struct.host1x_cdma*) #1

declare dso_local i32 @trace_host1x_cdma_begin(i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
