; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.nouveau_fence = type { i32 }

@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_fence*, i32, i64)* @nouveau_fence_wait_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nouveau_fence_wait_legacy(%struct.dma_fence* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.nouveau_fence*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %14 = call %struct.nouveau_fence* @from_fence(%struct.dma_fence* %13)
  store %struct.nouveau_fence* %14, %struct.nouveau_fence** %8, align 8
  %15 = load i32, i32* @NSEC_PER_MSEC, align 4
  %16 = sdiv i32 %15, 1000
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %11, align 8
  br label %22

22:                                               ; preds = %72, %3
  %23 = load %struct.nouveau_fence*, %struct.nouveau_fence** %8, align 8
  %24 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %73

27:                                               ; preds = %22
  %28 = load i64, i64* @jiffies, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @time_after_eq(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @TASK_RUNNING, align 4
  %39 = call i32 @__set_current_state(i32 %38)
  store i64 0, i64* %4, align 8
  br label %79

40:                                               ; preds = %32, %27
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @__set_current_state(i32 %48)
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %12, align 8
  %51 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %52 = call i32 @schedule_hrtimeout(i64* %12, i32 %51)
  %53 = load i64, i64* %9, align 8
  %54 = mul i64 %53, 2
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @NSEC_PER_MSEC, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @NSEC_PER_MSEC, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %59, %47
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* @current, align 4
  %67 = call i64 @signal_pending(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* @ERESTARTSYS, align 8
  %71 = sub nsw i64 0, %70
  store i64 %71, i64* %4, align 8
  br label %79

72:                                               ; preds = %65, %62
  br label %22

73:                                               ; preds = %22
  %74 = load i32, i32* @TASK_RUNNING, align 4
  %75 = call i32 @__set_current_state(i32 %74)
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %73, %69, %37
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local %struct.nouveau_fence* @from_fence(%struct.dma_fence*) #1

declare dso_local i32 @nouveau_fence_done(%struct.nouveau_fence*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule_hrtimeout(i64*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
