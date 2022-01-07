; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_wakeref_auto_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_wakeref_auto_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref_auto = type { i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@wf = common dso_local global %struct.intel_wakeref_auto* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @wakeref_auto_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeref_auto_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.intel_wakeref_auto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %7 = ptrtoint %struct.intel_wakeref_auto* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.intel_wakeref_auto* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.intel_wakeref_auto* %10, %struct.intel_wakeref_auto** %3, align 8
  %11 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %12 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %11, i32 0, i32 3
  %13 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %14 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %13, i32 0, i32 1
  %15 = call i32 @refcount_dec_and_lock_irqsave(i32* %12, i32* %14, i64* %5)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %20 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %19, i32 0, i32 2
  %21 = call i32 @fetch_and_zero(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %23 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %27 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @intel_runtime_pm_put(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.intel_wakeref_auto* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @refcount_dec_and_lock_irqsave(i32*, i32*, i64*) #1

declare dso_local i32 @fetch_and_zero(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @intel_runtime_pm_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
