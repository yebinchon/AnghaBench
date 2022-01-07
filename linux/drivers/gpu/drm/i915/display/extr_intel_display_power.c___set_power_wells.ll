; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c___set_power_wells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c___set_power_wells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_power_domains = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i915_power_well_desc* }
%struct.i915_power_well_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DISP_PW_ID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_power_domains*, %struct.i915_power_well_desc*, i32)* @__set_power_wells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_power_wells(%struct.i915_power_domains* %0, %struct.i915_power_well_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_power_domains*, align 8
  %6 = alloca %struct.i915_power_well_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i915_power_domains* %0, %struct.i915_power_domains** %5, align 8
  store %struct.i915_power_well_desc* %1, %struct.i915_power_well_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %13 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_2__* @kcalloc(i32 %14, i32 8, i32 %15)
  %17 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %18 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %17, i32 0, i32 1
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %20 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %68, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load %struct.i915_power_well_desc*, %struct.i915_power_well_desc** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i915_power_well_desc, %struct.i915_power_well_desc* %32, i64 %34
  %36 = getelementptr inbounds %struct.i915_power_well_desc, %struct.i915_power_well_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.i915_power_well_desc*, %struct.i915_power_well_desc** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i915_power_well_desc, %struct.i915_power_well_desc* %38, i64 %40
  %42 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %43 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.i915_power_well_desc* %41, %struct.i915_power_well_desc** %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @DISP_PW_ID_NONE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %31
  br label %68

53:                                               ; preds = %31
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp uge i64 %55, 32
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @BIT_ULL(i32 %60)
  %62 = and i32 %59, %61
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @BIT_ULL(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %53, %52
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %27

71:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_2__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
