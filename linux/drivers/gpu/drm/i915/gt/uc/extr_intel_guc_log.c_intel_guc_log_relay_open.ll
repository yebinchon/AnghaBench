; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_intel_guc_log_relay_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_intel_guc_log_relay_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_log = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@system_highpri_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_log_relay_open(%struct.intel_guc_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc_log*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_guc_log* %0, %struct.intel_guc_log** %3, align 8
  %5 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %6 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %14 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %18 = call i64 @intel_guc_log_relay_enabled(%struct.intel_guc_log* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %12
  %24 = call i32 (...) @i915_has_memcpy_from_wc()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %23
  %30 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %31 = call i32 @guc_log_relay_create(%struct.intel_guc_log* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %56

35:                                               ; preds = %29
  %36 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %37 = call i32 @guc_log_map(%struct.intel_guc_log* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %53

41:                                               ; preds = %35
  %42 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %43 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %47 = call i32 @guc_log_enable_flush_events(%struct.intel_guc_log* %46)
  %48 = load i32, i32* @system_highpri_wq, align 4
  %49 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %50 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @queue_work(i32 %48, i32* %51)
  store i32 0, i32* %2, align 4
  br label %62

53:                                               ; preds = %40
  %54 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %55 = call i32 @guc_log_relay_destroy(%struct.intel_guc_log* %54)
  br label %56

56:                                               ; preds = %53, %34, %26, %20
  %57 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %58 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %41, %9
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @intel_guc_log_relay_enabled(%struct.intel_guc_log*) #1

declare dso_local i32 @i915_has_memcpy_from_wc(...) #1

declare dso_local i32 @guc_log_relay_create(%struct.intel_guc_log*) #1

declare dso_local i32 @guc_log_map(%struct.intel_guc_log*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @guc_log_enable_flush_events(%struct.intel_guc_log*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @guc_log_relay_destroy(%struct.intel_guc_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
