; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cpu_transcoder_set_m_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cpu_transcoder_set_m_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_link_m_n = type { i32, i32, i32, i32, i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_link_m_n*, %struct.intel_link_m_n*)* @intel_cpu_transcoder_set_m_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_cpu_transcoder_set_m_n(%struct.intel_crtc_state* %0, %struct.intel_link_m_n* %1, %struct.intel_link_m_n* %2) #0 {
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_link_m_n*, align 8
  %6 = alloca %struct.intel_link_m_n*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_link_m_n* %1, %struct.intel_link_m_n** %5, align 8
  store %struct.intel_link_m_n* %2, %struct.intel_link_m_n** %6, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.intel_crtc* @to_intel_crtc(i32 %14)
  store %struct.intel_crtc* %15, %struct.intel_crtc** %7, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %8, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %28 = call i32 @INTEL_GEN(%struct.drm_i915_private* %27)
  %29 = icmp sge i32 %28, 5
  br i1 %29, label %30, label %103

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @PIPE_DATA_M1(i32 %31)
  %33 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %34 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @TU_SIZE(i32 %35)
  %37 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %38 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = call i32 @I915_WRITE(i32 %32, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @PIPE_DATA_N1(i32 %42)
  %44 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %45 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @I915_WRITE(i32 %43, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @PIPE_LINK_M1(i32 %48)
  %50 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %51 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @I915_WRITE(i32 %49, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @PIPE_LINK_N1(i32 %54)
  %56 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %57 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @I915_WRITE(i32 %55, i32 %58)
  %60 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %6, align 8
  %61 = icmp ne %struct.intel_link_m_n* %60, null
  br i1 %61, label %62, label %102

62:                                               ; preds = %30
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %64 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @transcoder_has_m2_n2(%struct.drm_i915_private* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @PIPE_DATA_M2(i32 %73)
  %75 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %6, align 8
  %76 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TU_SIZE(i32 %77)
  %79 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %6, align 8
  %80 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  %83 = call i32 @I915_WRITE(i32 %74, i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @PIPE_DATA_N2(i32 %84)
  %86 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %6, align 8
  %87 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @I915_WRITE(i32 %85, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @PIPE_LINK_M2(i32 %90)
  %92 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %6, align 8
  %93 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @I915_WRITE(i32 %91, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @PIPE_LINK_N2(i32 %96)
  %98 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %6, align 8
  %99 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @I915_WRITE(i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %72, %67, %62, %30
  br label %133

103:                                              ; preds = %3
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @PIPE_DATA_M_G4X(i32 %104)
  %106 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %107 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @TU_SIZE(i32 %108)
  %110 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %111 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %109, %112
  %114 = call i32 @I915_WRITE(i32 %105, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @PIPE_DATA_N_G4X(i32 %115)
  %117 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %118 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @I915_WRITE(i32 %116, i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @PIPE_LINK_M_G4X(i32 %121)
  %123 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %124 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @I915_WRITE(i32 %122, i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @PIPE_LINK_N_G4X(i32 %127)
  %129 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %130 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @I915_WRITE(i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %103, %102
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPE_DATA_M1(i32) #1

declare dso_local i32 @TU_SIZE(i32) #1

declare dso_local i32 @PIPE_DATA_N1(i32) #1

declare dso_local i32 @PIPE_LINK_M1(i32) #1

declare dso_local i32 @PIPE_LINK_N1(i32) #1

declare dso_local i64 @transcoder_has_m2_n2(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @PIPE_DATA_M2(i32) #1

declare dso_local i32 @PIPE_DATA_N2(i32) #1

declare dso_local i32 @PIPE_LINK_M2(i32) #1

declare dso_local i32 @PIPE_LINK_N2(i32) #1

declare dso_local i32 @PIPE_DATA_M_G4X(i32) #1

declare dso_local i32 @PIPE_DATA_N_G4X(i32) #1

declare dso_local i32 @PIPE_LINK_M_G4X(i32) #1

declare dso_local i32 @PIPE_LINK_N_G4X(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
