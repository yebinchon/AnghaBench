; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_default_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_default_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.radeon_fence = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.radeon_wait_cb = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@radeon_fence_wait_cb = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_fence*, i32, i64)* @radeon_fence_default_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @radeon_fence_default_wait(%struct.dma_fence* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.radeon_fence*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.radeon_wait_cb, align 4
  store %struct.dma_fence* %0, %struct.dma_fence** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %12 = call %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence* %11)
  store %struct.radeon_fence* %12, %struct.radeon_fence** %8, align 8
  %13 = load %struct.radeon_fence*, %struct.radeon_fence** %8, align 8
  %14 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %9, align 8
  %16 = load i32, i32* @current, align 4
  %17 = getelementptr inbounds %struct.radeon_wait_cb, %struct.radeon_wait_cb* %10, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_wait_cb, %struct.radeon_wait_cb* %10, i32 0, i32 0
  %20 = load i32, i32* @radeon_fence_wait_cb, align 4
  %21 = call i64 @dma_fence_add_callback(%struct.dma_fence* %18, i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %4, align 8
  br label %74

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %66, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %34 = call i32 @set_current_state(i32 %33)
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %37 = call i32 @set_current_state(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.radeon_fence*, %struct.radeon_fence** %8, align 8
  %40 = call i64 @radeon_test_signaled(%struct.radeon_fence* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %67

43:                                               ; preds = %38
  %44 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, i64* @EDEADLK, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %7, align 8
  br label %67

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @schedule_timeout(i64 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* @current, align 4
  %61 = call i64 @signal_pending(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @ERESTARTSYS, align 8
  %65 = sub nsw i64 0, %64
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %63, %59, %56, %51
  br label %26

67:                                               ; preds = %48, %42, %26
  %68 = load i32, i32* @TASK_RUNNING, align 4
  %69 = call i32 @__set_current_state(i32 %68)
  %70 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %71 = getelementptr inbounds %struct.radeon_wait_cb, %struct.radeon_wait_cb* %10, i32 0, i32 0
  %72 = call i32 @dma_fence_remove_callback(%struct.dma_fence* %70, i32* %71)
  %73 = load i64, i64* %7, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %67, %23
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @radeon_test_signaled(%struct.radeon_fence*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @dma_fence_remove_callback(%struct.dma_fence*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
