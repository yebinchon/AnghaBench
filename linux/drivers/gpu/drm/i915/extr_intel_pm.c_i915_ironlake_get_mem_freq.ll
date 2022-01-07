; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i915_ironlake_get_mem_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i915_ironlake_get_mem_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DDRMPLL1 = common dso_local global i32 0, align 4
@CSIPLL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown memory frequency 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown fsb frequency 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @i915_ironlake_get_mem_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_ironlake_get_mem_freq(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 3
  %7 = load i32, i32* @DDRMPLL1, align 4
  %8 = call i32 @intel_uncore_read16(i32* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 3
  %11 = load i32, i32* @CSIPLL0, align 4
  %12 = call i32 @intel_uncore_read16(i32* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 255
  switch i32 %14, label %27 [
    i32 12, label %15
    i32 16, label %18
    i32 20, label %21
    i32 24, label %24
  ]

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  store i32 800, i32* %17, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  store i32 1066, i32* %20, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  store i32 1333, i32* %23, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  store i32 1600, i32* %26, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 255
  %30 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %24, %21, %18, %15
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 1023
  switch i32 %41, label %63 [
    i32 12, label %42
    i32 14, label %45
    i32 16, label %48
    i32 18, label %51
    i32 20, label %54
    i32 22, label %57
    i32 24, label %60
  ]

42:                                               ; preds = %33
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 1
  store i32 3200, i32* %44, align 4
  br label %69

45:                                               ; preds = %33
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 1
  store i32 3733, i32* %47, align 4
  br label %69

48:                                               ; preds = %33
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 1
  store i32 4266, i32* %50, align 4
  br label %69

51:                                               ; preds = %33
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 1
  store i32 4800, i32* %53, align 4
  br label %69

54:                                               ; preds = %33
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 1
  store i32 5333, i32* %56, align 4
  br label %69

57:                                               ; preds = %33
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 1
  store i32 5866, i32* %59, align 4
  br label %69

60:                                               ; preds = %33
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %62 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %61, i32 0, i32 1
  store i32 6400, i32* %62, align 4
  br label %69

63:                                               ; preds = %33
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 1023
  %66 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %60, %57, %54, %51, %48, %45, %42
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 3200
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 3200
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sle i32 %86, 4800
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %96

92:                                               ; preds = %83, %78
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 2, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %74
  ret void
}

declare dso_local i32 @intel_uncore_read16(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
