; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c___intel_wakeref_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c___intel_wakeref_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref = type { i32, i64, i32, i32, %struct.intel_wakeref_ops*, %struct.intel_runtime_pm* }
%struct.intel_runtime_pm = type { i32 }
%struct.intel_wakeref_ops = type { i32 }
%struct.lock_class_key = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"wakeref\00", align 1
@__intel_wakeref_put_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__intel_wakeref_init(%struct.intel_wakeref* %0, %struct.intel_runtime_pm* %1, %struct.intel_wakeref_ops* %2, %struct.lock_class_key* %3) #0 {
  %5 = alloca %struct.intel_wakeref*, align 8
  %6 = alloca %struct.intel_runtime_pm*, align 8
  %7 = alloca %struct.intel_wakeref_ops*, align 8
  %8 = alloca %struct.lock_class_key*, align 8
  store %struct.intel_wakeref* %0, %struct.intel_wakeref** %5, align 8
  store %struct.intel_runtime_pm* %1, %struct.intel_runtime_pm** %6, align 8
  store %struct.intel_wakeref_ops* %2, %struct.intel_wakeref_ops** %7, align 8
  store %struct.lock_class_key* %3, %struct.lock_class_key** %8, align 8
  %9 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %6, align 8
  %10 = load %struct.intel_wakeref*, %struct.intel_wakeref** %5, align 8
  %11 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %10, i32 0, i32 5
  store %struct.intel_runtime_pm* %9, %struct.intel_runtime_pm** %11, align 8
  %12 = load %struct.intel_wakeref_ops*, %struct.intel_wakeref_ops** %7, align 8
  %13 = load %struct.intel_wakeref*, %struct.intel_wakeref** %5, align 8
  %14 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %13, i32 0, i32 4
  store %struct.intel_wakeref_ops* %12, %struct.intel_wakeref_ops** %14, align 8
  %15 = load %struct.intel_wakeref*, %struct.intel_wakeref** %5, align 8
  %16 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %15, i32 0, i32 3
  %17 = load %struct.lock_class_key*, %struct.lock_class_key** %8, align 8
  %18 = call i32 @__mutex_init(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* %17)
  %19 = load %struct.intel_wakeref*, %struct.intel_wakeref** %5, align 8
  %20 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %19, i32 0, i32 2
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.intel_wakeref*, %struct.intel_wakeref** %5, align 8
  %23 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.intel_wakeref*, %struct.intel_wakeref** %5, align 8
  %25 = getelementptr inbounds %struct.intel_wakeref, %struct.intel_wakeref* %24, i32 0, i32 0
  %26 = load i32, i32* @__intel_wakeref_put_work, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  ret void
}

declare dso_local i32 @__mutex_init(i32*, i8*, %struct.lock_class_key*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
