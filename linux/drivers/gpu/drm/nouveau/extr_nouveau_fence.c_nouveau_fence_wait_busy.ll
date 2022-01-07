; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fence.c_nouveau_fence_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fence = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fence*, i32)* @nouveau_fence_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fence_wait_busy(%struct.nouveau_fence* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_fence*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nouveau_fence* %0, %struct.nouveau_fence** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %8 = call i32 @nouveau_fence_done(%struct.nouveau_fence* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.nouveau_fence*, %struct.nouveau_fence** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_fence, %struct.nouveau_fence* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @time_after_eq(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %41

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @__set_current_state(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @current, align 4
  %35 = call i64 @signal_pending(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %33, %28
  br label %6

41:                                               ; preds = %37, %18, %6
  %42 = load i32, i32* @TASK_RUNNING, align 4
  %43 = call i32 @__set_current_state(i32 %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @nouveau_fence_done(%struct.nouveau_fence*) #1

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
