; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_check_for_unclaimed_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_check_for_unclaimed_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore*)* @check_for_unclaimed_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_unclaimed_mmio(%struct.intel_uncore* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %6 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %11 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %19 = call i64 @intel_uncore_has_fpga_dbg_unclaimed(%struct.intel_uncore* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %23 = call i32 @fpga_check_for_unclaimed_mmio(%struct.intel_uncore* %22)
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %28 = call i64 @intel_uncore_has_dbg_unclaimed(%struct.intel_uncore* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %32 = call i32 @vlv_check_for_unclaimed_mmio(%struct.intel_uncore* %31)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %37 = call i64 @intel_uncore_has_fifo(%struct.intel_uncore* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %41 = call i32 @gen6_check_for_fifo_debug(%struct.intel_uncore* %40)
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @intel_uncore_has_fpga_dbg_unclaimed(%struct.intel_uncore*) #1

declare dso_local i32 @fpga_check_for_unclaimed_mmio(%struct.intel_uncore*) #1

declare dso_local i64 @intel_uncore_has_dbg_unclaimed(%struct.intel_uncore*) #1

declare dso_local i32 @vlv_check_for_unclaimed_mmio(%struct.intel_uncore*) #1

declare dso_local i64 @intel_uncore_has_fifo(%struct.intel_uncore*) #1

declare dso_local i32 @gen6_check_for_fifo_debug(%struct.intel_uncore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
