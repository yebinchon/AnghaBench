; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_kfd_event_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_kfd_event_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_event = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KFD_MMAP_TYPE_EVENTS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_event_create(%struct.file* %0, %struct.kfd_process* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i64* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.kfd_process*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.kfd_event*, align 8
  store %struct.file* %0, %struct.file** %11, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i64* %7, i64** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.kfd_event* @kzalloc(i32 20, i32 %22)
  store %struct.kfd_event* %23, %struct.kfd_event** %21, align 8
  %24 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %25 = icmp ne %struct.kfd_event* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %9
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %89

29:                                               ; preds = %9
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %32 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %35 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %37 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %36, i32 0, i32 2
  store i32 0, i32* %37, align 4
  %38 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %39 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %38, i32 0, i32 4
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load i64*, i64** %18, align 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.kfd_process*, %struct.kfd_process** %12, align 8
  %43 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* %13, align 4
  switch i32 %45, label %65 [
    i32 128, label %46
    i32 129, label %46
  ]

46:                                               ; preds = %29, %29
  %47 = load %struct.file*, %struct.file** %11, align 8
  %48 = load %struct.kfd_process*, %struct.kfd_process** %12, align 8
  %49 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %50 = call i32 @create_signal_event(%struct.file* %47, %struct.kfd_process* %48, %struct.kfd_event* %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* @KFD_MMAP_TYPE_EVENTS, align 8
  %55 = load i64*, i64** %18, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = load i64*, i64** %18, align 8
  %58 = load i64, i64* %57, align 8
  %59 = shl i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %61 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %19, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %46
  br label %69

65:                                               ; preds = %29
  %66 = load %struct.kfd_process*, %struct.kfd_process** %12, align 8
  %67 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %68 = call i32 @create_other_event(%struct.kfd_process* %66, %struct.kfd_event* %67)
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %65, %64
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %74 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %16, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %78 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %17, align 8
  store i32 %79, i32* %80, align 4
  br label %84

81:                                               ; preds = %69
  %82 = load %struct.kfd_event*, %struct.kfd_event** %21, align 8
  %83 = call i32 @kfree(%struct.kfd_event* %82)
  br label %84

84:                                               ; preds = %81, %72
  %85 = load %struct.kfd_process*, %struct.kfd_process** %12, align 8
  %86 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %20, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %84, %26
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local %struct.kfd_event* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @create_signal_event(%struct.file*, %struct.kfd_process*, %struct.kfd_event*) #1

declare dso_local i32 @create_other_event(%struct.kfd_process*, %struct.kfd_event*) #1

declare dso_local i32 @kfree(%struct.kfd_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
