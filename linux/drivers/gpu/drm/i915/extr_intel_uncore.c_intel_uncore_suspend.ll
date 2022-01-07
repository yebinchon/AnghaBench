; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uncore_suspend(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %3 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %4 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  %8 = call i32 (...) @iosf_mbi_punit_acquire()
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %10 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %9, i32 0, i32 1
  %11 = call i32 @iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(i32* %10)
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %13 = call i32 @intel_uncore_forcewake_reset(%struct.intel_uncore* %12)
  %14 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %15 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call i32 (...) @iosf_mbi_punit_release()
  br label %17

17:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @intel_uncore_has_forcewake(%struct.intel_uncore*) #1

declare dso_local i32 @iosf_mbi_punit_acquire(...) #1

declare dso_local i32 @iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(i32*) #1

declare dso_local i32 @intel_uncore_forcewake_reset(%struct.intel_uncore*) #1

declare dso_local i32 @iosf_mbi_punit_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
