; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gmbus = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@GPIO_CLOCK_DIR_IN = common dso_local global i32 0, align 4
@GPIO_CLOCK_DIR_MASK = common dso_local global i32 0, align 4
@GPIO_CLOCK_DIR_OUT = common dso_local global i32 0, align 4
@GPIO_CLOCK_VAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_clock(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_gmbus*, align 8
  %6 = alloca %struct.intel_uncore*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.intel_gmbus*
  store %struct.intel_gmbus* %10, %struct.intel_gmbus** %5, align 8
  %11 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %12 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.intel_uncore* %14, %struct.intel_uncore** %6, align 8
  %15 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %16 = call i32 @get_reserved(%struct.intel_gmbus* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @GPIO_CLOCK_DIR_IN, align 4
  %21 = load i32, i32* @GPIO_CLOCK_DIR_MASK, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %8, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @GPIO_CLOCK_DIR_OUT, align 4
  %25 = load i32, i32* @GPIO_CLOCK_DIR_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GPIO_CLOCK_VAL_MASK, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %31 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %32 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @intel_uncore_write_notrace(%struct.intel_uncore* %30, i32 %33, i32 %36)
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %39 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %40 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %38, i32 %41)
  ret void
}

declare dso_local i32 @get_reserved(%struct.intel_gmbus*) #1

declare dso_local i32 @intel_uncore_write_notrace(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
