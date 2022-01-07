; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cpu_transcoder_get_m_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cpu_transcoder_get_m_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_link_m_n = type { i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@TU_SIZE_MASK = common dso_local global i32 0, align 4
@TU_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, i32, %struct.intel_link_m_n*, %struct.intel_link_m_n*)* @intel_cpu_transcoder_get_m_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_cpu_transcoder_get_m_n(%struct.intel_crtc* %0, i32 %1, %struct.intel_link_m_n* %2, %struct.intel_link_m_n* %3) #0 {
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_link_m_n*, align 8
  %8 = alloca %struct.intel_link_m_n*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.intel_link_m_n* %2, %struct.intel_link_m_n** %7, align 8
  store %struct.intel_link_m_n* %3, %struct.intel_link_m_n** %8, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %9, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %20 = call i32 @INTEL_GEN(%struct.drm_i915_private* %19)
  %21 = icmp sge i32 %20, 5
  br i1 %21, label %22, label %98

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @PIPE_LINK_M1(i32 %23)
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %27 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @PIPE_LINK_N1(i32 %28)
  %30 = call i32 @I915_READ(i32 %29)
  %31 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %32 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @PIPE_DATA_M1(i32 %33)
  %35 = call i32 @I915_READ(i32 %34)
  %36 = load i32, i32* @TU_SIZE_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %40 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @PIPE_DATA_N1(i32 %41)
  %43 = call i32 @I915_READ(i32 %42)
  %44 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %45 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @PIPE_DATA_M1(i32 %46)
  %48 = call i32 @I915_READ(i32 %47)
  %49 = load i32, i32* @TU_SIZE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @TU_SIZE_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %55 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %57 = icmp ne %struct.intel_link_m_n* %56, null
  br i1 %57, label %58, label %97

58:                                               ; preds = %22
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @transcoder_has_m2_n2(%struct.drm_i915_private* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @PIPE_LINK_M2(i32 %64)
  %66 = call i32 @I915_READ(i32 %65)
  %67 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %68 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @PIPE_LINK_N2(i32 %69)
  %71 = call i32 @I915_READ(i32 %70)
  %72 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %73 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @PIPE_DATA_M2(i32 %74)
  %76 = call i32 @I915_READ(i32 %75)
  %77 = load i32, i32* @TU_SIZE_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %81 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @PIPE_DATA_N2(i32 %82)
  %84 = call i32 @I915_READ(i32 %83)
  %85 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %86 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @PIPE_DATA_M2(i32 %87)
  %89 = call i32 @I915_READ(i32 %88)
  %90 = load i32, i32* @TU_SIZE_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @TU_SIZE_SHIFT, align 4
  %93 = ashr i32 %91, %92
  %94 = add nsw i32 %93, 1
  %95 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %96 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %63, %58, %22
  br label %132

98:                                               ; preds = %4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @PIPE_LINK_M_G4X(i32 %99)
  %101 = call i32 @I915_READ(i32 %100)
  %102 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %103 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @PIPE_LINK_N_G4X(i32 %104)
  %106 = call i32 @I915_READ(i32 %105)
  %107 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %108 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @PIPE_DATA_M_G4X(i32 %109)
  %111 = call i32 @I915_READ(i32 %110)
  %112 = load i32, i32* @TU_SIZE_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %116 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @PIPE_DATA_N_G4X(i32 %117)
  %119 = call i32 @I915_READ(i32 %118)
  %120 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %121 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @PIPE_DATA_M_G4X(i32 %122)
  %124 = call i32 @I915_READ(i32 %123)
  %125 = load i32, i32* @TU_SIZE_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @TU_SIZE_SHIFT, align 4
  %128 = ashr i32 %126, %127
  %129 = add nsw i32 %128, 1
  %130 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %7, align 8
  %131 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %98, %97
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPE_LINK_M1(i32) #1

declare dso_local i32 @PIPE_LINK_N1(i32) #1

declare dso_local i32 @PIPE_DATA_M1(i32) #1

declare dso_local i32 @PIPE_DATA_N1(i32) #1

declare dso_local i64 @transcoder_has_m2_n2(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @PIPE_LINK_M2(i32) #1

declare dso_local i32 @PIPE_LINK_N2(i32) #1

declare dso_local i32 @PIPE_DATA_M2(i32) #1

declare dso_local i32 @PIPE_DATA_N2(i32) #1

declare dso_local i32 @PIPE_LINK_M_G4X(i32) #1

declare dso_local i32 @PIPE_LINK_N_G4X(i32) #1

declare dso_local i32 @PIPE_DATA_M_G4X(i32) #1

declare dso_local i32 @PIPE_DATA_N_G4X(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
