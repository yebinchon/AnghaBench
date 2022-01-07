; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c___intel_wakeref_get_first.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c___intel_wakeref_get_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__intel_wakeref_get_first(%struct.intel_wakeref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_wakeref*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_wakeref* %0, %struct.intel_wakeref** %3, align 8
  %5 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %6 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %5, i32 0, i32 1
  %7 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %8 = call i32 @mutex_lock_nested(i32* %6, i32 %7)
  %9 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %10 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %9, i32 0, i32 0
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %1
  %14 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %15 = call i32 @rpm_get(%struct.intel_wakeref* %14)
  %16 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %17 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.intel_wakeref*)**
  %21 = load i32 (%struct.intel_wakeref*)*, i32 (%struct.intel_wakeref*)** %20, align 8
  %22 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %23 = call i32 %21(%struct.intel_wakeref* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %29 = call i32 @rpm_put(%struct.intel_wakeref* %28)
  %30 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %31 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %49

34:                                               ; preds = %13
  %35 = call i32 (...) @smp_mb__before_atomic()
  br label %36

36:                                               ; preds = %34, %1
  %37 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %38 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %37, i32 0, i32 0
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %41 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.intel_wakeref*, %struct.intel_wakeref** %3, align 8
  %44 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %43, i32 0, i32 0
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp sle i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @INTEL_WAKEREF_BUG_ON(i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %36, %27
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @rpm_get(%struct.intel_wakeref*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rpm_put(%struct.intel_wakeref*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INTEL_WAKEREF_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
