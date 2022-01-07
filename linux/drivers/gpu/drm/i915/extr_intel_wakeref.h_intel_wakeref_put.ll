; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.h_intel_wakeref_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.h_intel_wakeref_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_wakeref*)* @intel_wakeref_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_wakeref_put(%struct.intel_wakeref* %0) #0 {
  %2 = alloca %struct.intel_wakeref*, align 8
  store %struct.intel_wakeref* %0, %struct.intel_wakeref** %2, align 8
  %3 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %4 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %3, i32 0, i32 0
  %5 = call i64 @atomic_read(i32* %4)
  %6 = icmp sle i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @INTEL_WAKEREF_BUG_ON(i32 %7)
  %9 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %10 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %9, i32 0, i32 0
  %11 = call i32 @atomic_add_unless(i32* %10, i32 -1, i32 1)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %19 = call i32 @__intel_wakeref_put_last(%struct.intel_wakeref* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @INTEL_WAKEREF_BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @__intel_wakeref_put_last(%struct.intel_wakeref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
