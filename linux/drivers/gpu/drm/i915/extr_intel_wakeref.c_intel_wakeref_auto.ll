; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_intel_wakeref_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_intel_wakeref_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref_auto = type { i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_wakeref_auto(%struct.intel_wakeref_auto* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_wakeref_auto*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.intel_wakeref_auto* %0, %struct.intel_wakeref_auto** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %10 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %9, i32 0, i32 0
  %11 = call i64 @del_timer_sync(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %15 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %14, i32 0, i32 0
  %16 = call i32 @wakeref_auto_timeout(i32* %15)
  br label %17

17:                                               ; preds = %13, %8
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %20 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @assert_rpm_wakelock_held(i32 %21)
  %23 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %24 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %23, i32 0, i32 2
  %25 = call i32 @refcount_inc_not_zero(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %18
  %28 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %29 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %28, i32 0, i32 1
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %33 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %32, i32 0, i32 2
  %34 = call i32 @refcount_inc_not_zero(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %27
  %37 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %38 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @INTEL_WAKEREF_BUG_ON(i32 %39)
  %41 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %42 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @intel_runtime_pm_get_if_in_use(i32 %43)
  %45 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %46 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %48 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %47, i32 0, i32 2
  %49 = call i32 @refcount_set(i32* %48, i32 1)
  br label %50

50:                                               ; preds = %36, %27
  %51 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %52 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %51, i32 0, i32 1
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %50, %18
  %56 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %57 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %56, i32 0, i32 0
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %58, %59
  %61 = call i64 @mod_timer(i32* %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %65 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %64, i32 0, i32 0
  %66 = call i32 @wakeref_auto_timeout(i32* %65)
  br label %67

67:                                               ; preds = %17, %63, %55
  ret void
}

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @wakeref_auto_timeout(i32*) #1

declare dso_local i32 @assert_rpm_wakelock_held(i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INTEL_WAKEREF_BUG_ON(i32) #1

declare dso_local i32 @intel_runtime_pm_get_if_in_use(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
