; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_intel_wakeref_wait_for_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_intel_wakeref_wait_for_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_wakeref_wait_for_idle(%struct.intel_wakeref* %0) #0 {
  %2 = alloca %struct.intel_wakeref*, align 8
  store %struct.intel_wakeref* %0, %struct.intel_wakeref** %2, align 8
  %3 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %4 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %3, i32 0, i32 0
  %5 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %6 = call i32 @intel_wakeref_is_active(%struct.intel_wakeref* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @wait_var_event_killable(i32* %4, i32 %9)
  ret i32 %10
}

declare dso_local i32 @wait_var_event_killable(i32*, i32) #1

declare dso_local i32 @intel_wakeref_is_active(%struct.intel_wakeref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
