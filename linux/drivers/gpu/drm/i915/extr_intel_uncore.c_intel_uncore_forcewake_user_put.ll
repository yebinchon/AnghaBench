; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_forcewake_user_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_forcewake_user_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid mmio detected during user access\0A\00", align 1
@FORCEWAKE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uncore_forcewake_user_put(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %3 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %4 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %7 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %1
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %13 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %18 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 @mmio_debug_resume(%struct.TYPE_6__* %19)
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %22 = call i64 @check_for_unclaimed_mmio(%struct.intel_uncore* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %11
  %25 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %26 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_info(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %24, %11
  %33 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %34 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %39 = load i32, i32* @FORCEWAKE_ALL, align 4
  %40 = call i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %1
  %42 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %43 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mmio_debug_resume(%struct.TYPE_6__*) #1

declare dso_local i64 @check_for_unclaimed_mmio(%struct.intel_uncore*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @intel_uncore_forcewake_put__locked(%struct.intel_uncore*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
