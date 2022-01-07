; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pre_plane_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_pre_plane_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.drm_atomic_state*, i32 }
%struct.drm_atomic_state = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_plane*, %struct.drm_device* }
%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* }
%struct.intel_atomic_state = type { i32 }
%struct.drm_plane_state = type { i64 }
%struct.intel_plane_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_crtc_state*)* @intel_pre_plane_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pre_plane_update(%struct.intel_crtc_state* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_atomic_state*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.drm_plane_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_atomic_state*, align 8
  %13 = alloca %struct.intel_plane_state*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(i32 %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %5, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %23)
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %7, align 8
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %27, align 8
  store %struct.drm_atomic_state* %28, %struct.drm_atomic_state** %8, align 8
  %29 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.drm_plane*, %struct.drm_plane** %31, align 8
  store %struct.drm_plane* %32, %struct.drm_plane** %9, align 8
  %33 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %8, align 8
  %34 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %35 = call %struct.drm_plane_state* @drm_atomic_get_old_plane_state(%struct.drm_atomic_state* %33, %struct.drm_plane* %34)
  store %struct.drm_plane_state* %35, %struct.drm_plane_state** %10, align 8
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %37 = call i32 @needs_modeset(%struct.intel_crtc_state* %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %8, align 8
  %39 = call %struct.intel_atomic_state* @to_intel_atomic_state(%struct.drm_atomic_state* %38)
  store %struct.intel_atomic_state* %39, %struct.intel_atomic_state** %12, align 8
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %42 = call i64 @hsw_pre_update_disable_ips(%struct.intel_crtc_state* %40, %struct.intel_crtc_state* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %46 = call i32 @hsw_disable_ips(%struct.intel_crtc_state* %45)
  br label %47

47:                                               ; preds = %44, %2
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %49 = icmp ne %struct.drm_plane_state* %48, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %12, align 8
  %52 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %53 = call i32 @to_intel_plane(%struct.drm_plane* %52)
  %54 = call %struct.intel_plane_state* @intel_atomic_get_new_plane_state(%struct.intel_atomic_state* %51, i32 %53)
  store %struct.intel_plane_state* %54, %struct.intel_plane_state** %13, align 8
  %55 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %57 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %58 = call i32 @intel_fbc_pre_update(%struct.intel_crtc* %55, %struct.intel_crtc_state* %56, %struct.intel_plane_state* %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %60 = call i64 @IS_GEN(%struct.drm_i915_private* %59, i32 2)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %50
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load %struct.intel_plane_state*, %struct.intel_plane_state** %13, align 8
  %72 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70, %67
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %78 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %79 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %77, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %76, %70, %62, %50
  br label %83

83:                                               ; preds = %82, %47
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %85 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %86 = call i64 @needs_nv12_wa(%struct.drm_i915_private* %84, %struct.intel_crtc_state* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %83
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %90 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %91 = call i64 @needs_nv12_wa(%struct.drm_i915_private* %89, %struct.intel_crtc_state* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %95 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %96 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @skl_wa_827(%struct.drm_i915_private* %94, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %93, %88, %83
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %101 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %102 = call i64 @needs_scalerclk_wa(%struct.drm_i915_private* %100, %struct.intel_crtc_state* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %99
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %106 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %107 = call i64 @needs_scalerclk_wa(%struct.drm_i915_private* %105, %struct.intel_crtc_state* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %111 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %112 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @icl_wa_scalerclkgating(%struct.drm_i915_private* %110, i32 %113, i32 1)
  br label %115

115:                                              ; preds = %109, %104, %99
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %117 = call i64 @HAS_GMCH(%struct.drm_i915_private* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %115
  %120 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %121 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %127 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %132 = call i64 @intel_set_memory_cxsr(%struct.drm_i915_private* %131, i32 0)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %136 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %137 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %135, i32 %138)
  br label %140

140:                                              ; preds = %134, %130, %125, %119, %115
  %141 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %142 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %140
  %146 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %147 = call i64 @ilk_disable_lp_wm(%struct.drm_device* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %151 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %157 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %158 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %156, i32 %159)
  br label %161

161:                                              ; preds = %155, %149, %145, %140
  %162 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %163 = call i32 @needs_modeset(%struct.intel_crtc_state* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %189

166:                                              ; preds = %161
  %167 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %168 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %169, align 8
  %171 = icmp ne i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %174 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %175, align 8
  %177 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %12, align 8
  %178 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %179 = call i32 %176(%struct.intel_atomic_state* %177, %struct.intel_crtc_state* %178)
  br label %189

180:                                              ; preds = %166
  %181 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %182 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %187 = call i32 @intel_update_watermarks(%struct.intel_crtc* %186)
  br label %188

188:                                              ; preds = %185, %180
  br label %189

189:                                              ; preds = %165, %188, %172
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_old_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i32 @needs_modeset(%struct.intel_crtc_state*) #1

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(%struct.drm_atomic_state*) #1

declare dso_local i64 @hsw_pre_update_disable_ips(%struct.intel_crtc_state*, %struct.intel_crtc_state*) #1

declare dso_local i32 @hsw_disable_ips(%struct.intel_crtc_state*) #1

declare dso_local %struct.intel_plane_state* @intel_atomic_get_new_plane_state(%struct.intel_atomic_state*, i32) #1

declare dso_local i32 @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @intel_fbc_pre_update(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_plane_state*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @needs_nv12_wa(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

declare dso_local i32 @skl_wa_827(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @needs_scalerclk_wa(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

declare dso_local i32 @icl_wa_scalerclkgating(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_set_memory_cxsr(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @ilk_disable_lp_wm(%struct.drm_device*) #1

declare dso_local i32 @intel_update_watermarks(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
