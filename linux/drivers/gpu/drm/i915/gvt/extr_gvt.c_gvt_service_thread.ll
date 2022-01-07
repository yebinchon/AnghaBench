; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_gvt_service_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_gvt_service_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"service thread start\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"service thread is waken up by signal.\0A\00", align 1
@INTEL_GVT_REQUEST_EMULATE_VBLANK = common dso_local global i32 0, align 4
@INTEL_GVT_REQUEST_SCHED = common dso_local global i32 0, align 4
@INTEL_GVT_REQUEST_EVENT_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gvt_service_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gvt_service_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.intel_gvt*
  store %struct.intel_gvt* %6, %struct.intel_gvt** %3, align 8
  %7 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %62, %34, %1
  %9 = call i64 (...) @kthread_should_stop()
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %63

12:                                               ; preds = %8
  %13 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %14 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 (...) @kthread_should_stop()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %20 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i1 [ true, %12 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_event_interruptible(i32 %15, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = call i64 (...) @kthread_should_stop()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %63

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @WARN_ONCE(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %8

35:                                               ; preds = %30
  %36 = load i32, i32* @INTEL_GVT_REQUEST_EMULATE_VBLANK, align 4
  %37 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %38 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %37, i32 0, i32 0
  %39 = bitcast i64* %38 to i8*
  %40 = call i64 @test_and_clear_bit(i32 %36, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %44 = call i32 @intel_gvt_emulate_vblank(%struct.intel_gvt* %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* @INTEL_GVT_REQUEST_SCHED, align 4
  %47 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %48 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %47, i32 0, i32 0
  %49 = bitcast i64* %48 to i8*
  %50 = call i64 @test_bit(i32 %46, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @INTEL_GVT_REQUEST_EVENT_SCHED, align 4
  %54 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %55 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %54, i32 0, i32 0
  %56 = bitcast i64* %55 to i8*
  %57 = call i64 @test_bit(i32 %53, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %45
  %60 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %61 = call i32 @intel_gvt_schedule(%struct.intel_gvt* %60)
  br label %62

62:                                               ; preds = %59, %52
  br label %8

63:                                               ; preds = %29, %8
  ret i32 0
}

declare dso_local i32 @gvt_dbg_core(i8*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i8*) #1

declare dso_local i32 @intel_gvt_emulate_vblank(%struct.intel_gvt*) #1

declare dso_local i64 @test_bit(i32, i8*) #1

declare dso_local i32 @intel_gvt_schedule(%struct.intel_gvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
