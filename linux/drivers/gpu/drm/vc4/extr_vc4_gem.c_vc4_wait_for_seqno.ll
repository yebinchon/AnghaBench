; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_wait_for_seqno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_wait_for_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i64, i32 }

@wait = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_wait_for_seqno(%struct.drm_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %13)
  store %struct.vc4_dev* %14, %struct.vc4_dev** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @wait, align 4
  %16 = call i32 @DEFINE_WAIT(i32 %15)
  %17 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %18 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ETIME, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %23
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @nsecs_to_jiffies(i64 %31)
  %33 = add i64 %30, %32
  store i64 %33, i64* %12, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @trace_vc4_wait_for_seqno_begin(%struct.drm_device* %34, i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %84, %29
  %39 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %40 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @prepare_to_wait(i32* %40, i32* @wait, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ERESTARTSYS, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %85

59:                                               ; preds = %52, %47
  %60 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %61 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %85

66:                                               ; preds = %59
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, -1
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @time_after_eq(i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ETIME, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %85

77:                                               ; preds = %69
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @jiffies, align 8
  %80 = sub i64 %78, %79
  %81 = call i32 @schedule_timeout(i64 %80)
  br label %84

82:                                               ; preds = %66
  %83 = call i32 (...) @schedule()
  br label %84

84:                                               ; preds = %82, %77
  br label %38

85:                                               ; preds = %74, %65, %56
  %86 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %87 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %86, i32 0, i32 1
  %88 = call i32 @finish_wait(i32* %87, i32* @wait)
  %89 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @trace_vc4_wait_for_seqno_end(%struct.drm_device* %89, i64 %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %85, %26, %22
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @nsecs_to_jiffies(i64) #1

declare dso_local i32 @trace_vc4_wait_for_seqno_begin(%struct.drm_device*, i64, i64) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @trace_vc4_wait_for_seqno_end(%struct.drm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
