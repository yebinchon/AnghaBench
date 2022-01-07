; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_rpm_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_rpm_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_wakeref*)* @rpm_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpm_put(%struct.intel_wakeref* %0) #0 {
  %2 = alloca %struct.intel_wakeref*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_wakeref* %0, %struct.intel_wakeref** %2, align 8
  %4 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %5 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %4, i32 0, i32 1
  %6 = call i32 @fetch_and_zero(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %8 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @intel_runtime_pm_put(i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @INTEL_WAKEREF_BUG_ON(i32 %15)
  ret void
}

declare dso_local i32 @fetch_and_zero(i32*) #1

declare dso_local i32 @intel_runtime_pm_put(i32, i32) #1

declare dso_local i32 @INTEL_WAKEREF_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
