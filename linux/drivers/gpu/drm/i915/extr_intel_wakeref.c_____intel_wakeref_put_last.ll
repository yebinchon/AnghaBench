; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_____intel_wakeref_put_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_____intel_wakeref_put_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.intel_wakeref*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_wakeref*)* @____intel_wakeref_put_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @____intel_wakeref_put_last(%struct.intel_wakeref* %0) #0 {
  %2 = alloca %struct.intel_wakeref*, align 8
  store %struct.intel_wakeref* %0, %struct.intel_wakeref** %2, align 8
  %3 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %4 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %3, i32 0, i32 3
  %5 = call i32 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %10 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.intel_wakeref*)*, i32 (%struct.intel_wakeref*)** %12, align 8
  %14 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %15 = call i32 %13(%struct.intel_wakeref* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %8
  %22 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %23 = call i32 @rpm_put(%struct.intel_wakeref* %22)
  %24 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %25 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %24, i32 0, i32 1
  %26 = call i32 @wake_up_var(i32* %25)
  br label %27

27:                                               ; preds = %21, %8
  br label %28

28:                                               ; preds = %27, %7
  %29 = load %struct.intel_wakeref*, %struct.intel_wakeref** %2, align 8
  %30 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rpm_put(%struct.intel_wakeref*) #1

declare dso_local i32 @wake_up_var(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
