; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..intel_runtime_pm.h_print_intel_runtime_pm_wakeref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..intel_runtime_pm.h_print_intel_runtime_pm_wakeref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_runtime_pm = type { i32 }
%struct.drm_printer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_runtime_pm*, %struct.drm_printer*)* @print_intel_runtime_pm_wakeref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_intel_runtime_pm_wakeref(%struct.intel_runtime_pm* %0, %struct.drm_printer* %1) #0 {
  %3 = alloca %struct.intel_runtime_pm*, align 8
  %4 = alloca %struct.drm_printer*, align 8
  store %struct.intel_runtime_pm* %0, %struct.intel_runtime_pm** %3, align 8
  store %struct.drm_printer* %1, %struct.drm_printer** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
