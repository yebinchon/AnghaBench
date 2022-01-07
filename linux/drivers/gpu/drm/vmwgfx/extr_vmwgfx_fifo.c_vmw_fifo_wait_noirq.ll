; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_wait_noirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_wait_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@__wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Fifo wait noirq.\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SVGA device lockup.\0A\00", align 1
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Fifo noirq exit.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, i32, i32, i64)* @vmw_fifo_wait_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fifo_wait_noirq(%struct.vmw_private* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %10, align 8
  %14 = load i32, i32* @__wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  %16 = call i32 @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %54, %4
  %18 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %19 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @prepare_to_wait(i32* %19, i32* @__wait, i32 %27)
  %29 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @vmw_fifo_is_full(%struct.vmw_private* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %55

34:                                               ; preds = %26
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @time_after_eq(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %55

43:                                               ; preds = %34
  %44 = call i32 @schedule_timeout(i32 1)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @current, align 4
  %49 = call i64 @signal_pending(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @ERESTARTSYS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %55

54:                                               ; preds = %47, %43
  br label %17

55:                                               ; preds = %51, %39, %33
  %56 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %57 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %56, i32 0, i32 0
  %58 = call i32 @finish_wait(i32* %57, i32* @__wait)
  %59 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %60 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %59, i32 0, i32 0
  %61 = call i32 @wake_up_all(i32* %60)
  %62 = call i32 @DRM_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @vmw_fifo_is_full(%struct.vmw_private*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
