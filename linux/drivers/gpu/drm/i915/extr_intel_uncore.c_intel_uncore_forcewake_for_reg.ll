; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_forcewake_for_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_forcewake_for_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.intel_uncore.0*, i32)*, i32 (%struct.intel_uncore.1*, i32)* }
%struct.intel_uncore.0 = type opaque
%struct.intel_uncore.1 = type opaque

@FW_REG_READ = common dso_local global i32 0, align 4
@FW_REG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_uncore_forcewake_for_reg(%struct.intel_uncore* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %15 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FW_REG_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %25 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.intel_uncore.0*, i32)*, i32 (%struct.intel_uncore.0*, i32)** %26, align 8
  %28 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %29 = bitcast %struct.intel_uncore* %28 to %struct.intel_uncore.0*
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %27(%struct.intel_uncore.0* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %23, %18
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @FW_REG_WRITE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %39 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.intel_uncore.1*, i32)*, i32 (%struct.intel_uncore.1*, i32)** %40, align 8
  %42 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %43 = bitcast %struct.intel_uncore* %42 to %struct.intel_uncore.1*
  %44 = load i32, i32* %6, align 4
  %45 = call i32 %41(%struct.intel_uncore.1* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %37, %32
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %51 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %48, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_uncore_has_forcewake(%struct.intel_uncore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
