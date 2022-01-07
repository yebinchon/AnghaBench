; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@MODE_NO_VSCAN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_HSKEW = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_CSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NCSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PCSYNC = common dso_local global i32 0, align 4
@MODE_HSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_BCAST = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PIXMUX = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_CLKDIV2 = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_V_ILLEGAL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_display_mode*)* @intel_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_mode_valid(%struct.drm_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %6, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @MODE_NO_VSCAN, align 4
  store i32 %18, i32* %3, align 4
  br label %128

19:                                               ; preds = %2
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DRM_MODE_FLAG_HSKEW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %27, i32* %3, align 4
  br label %128

28:                                               ; preds = %19
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRM_MODE_FLAG_CSYNC, align 4
  %33 = load i32, i32* @DRM_MODE_FLAG_NCSYNC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DRM_MODE_FLAG_PCSYNC, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @MODE_HSYNC, align 4
  store i32 %40, i32* %3, align 4
  br label %128

41:                                               ; preds = %28
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DRM_MODE_FLAG_BCAST, align 4
  %46 = load i32, i32* @DRM_MODE_FLAG_PIXMUX, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DRM_MODE_FLAG_CLKDIV2, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @MODE_BAD, align 4
  store i32 %53, i32* %3, align 4
  br label %128

54:                                               ; preds = %41
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %56 = call i32 @INTEL_GEN(%struct.drm_i915_private* %55)
  %57 = icmp sge i32 %56, 9
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %60 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %64 = call i64 @IS_HASWELL(%struct.drm_i915_private* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58, %54
  store i32 8192, i32* %7, align 4
  store i32 4096, i32* %9, align 4
  store i32 8192, i32* %8, align 4
  store i32 8192, i32* %10, align 4
  br label %74

67:                                               ; preds = %62
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %69 = call i32 @INTEL_GEN(%struct.drm_i915_private* %68)
  %70 = icmp sge i32 %69, 3
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 4096, i32* %7, align 4
  store i32 4096, i32* %9, align 4
  store i32 8192, i32* %8, align 4
  store i32 8192, i32* %10, align 4
  br label %73

72:                                               ; preds = %67
  store i32 2048, i32* %7, align 4
  store i32 2048, i32* %9, align 4
  store i32 4096, i32* %8, align 4
  store i32 4096, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %66
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %98, label %80

80:                                               ; preds = %74
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92, %86, %80, %74
  %99 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %99, i32* %3, align 4
  br label %128

100:                                              ; preds = %92
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %124, label %106

106:                                              ; preds = %100
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %124, label %112

112:                                              ; preds = %106
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118, %112, %106, %100
  %125 = load i32, i32* @MODE_V_ILLEGAL, align 4
  store i32 %125, i32* %3, align 4
  br label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @MODE_OK, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %124, %98, %52, %39, %26, %17
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
