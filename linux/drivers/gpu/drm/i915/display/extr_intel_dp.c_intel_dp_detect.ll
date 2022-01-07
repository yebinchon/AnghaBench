; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.intel_dp = type { i32, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_12__, i32*, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.intel_digital_port = type { %struct.intel_encoder }
%struct.intel_encoder = type { i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"MST device may have disappeared %d vs %d\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_modeset_acquire_ctx*, i32)* @intel_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_detect(%struct.drm_connector* %0, %struct.drm_modeset_acquire_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca %struct.intel_digital_port*, align 8
  %11 = alloca %struct.intel_encoder*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %8, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %19 = call %struct.intel_dp* @intel_attached_dp(%struct.drm_connector* %18)
  store %struct.intel_dp* %19, %struct.intel_dp** %9, align 8
  %20 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %21 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %20)
  store %struct.intel_digital_port* %21, %struct.intel_digital_port** %10, align 8
  %22 = load %struct.intel_digital_port*, %struct.intel_digital_port** %10, align 8
  %23 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %22, i32 0, i32 0
  store %struct.intel_encoder* %23, %struct.intel_encoder** %11, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = call i32 @drm_modeset_is_locked(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %42 = call i64 @intel_dp_is_edp(%struct.intel_dp* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %46 = call i32 @edp_detect(%struct.intel_dp* %45)
  store i32 %46, i32* %12, align 4
  br label %57

47:                                               ; preds = %3
  %48 = load %struct.intel_encoder*, %struct.intel_encoder** %11, align 8
  %49 = call i64 @intel_digital_port_connected(%struct.intel_encoder* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %53 = call i32 @intel_dp_detect_dpcd(%struct.intel_dp* %52)
  store i32 %53, i32* %12, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %51
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @connector_status_disconnected, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %63 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %62, i32 0, i32 7
  %64 = call i32 @memset(i32* %63, i32 0, i32 4)
  %65 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %66 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @memset(i32* %67, i32 0, i32 8)
  %69 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %70 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %61
  %74 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %75 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %78 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %80)
  %82 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %83 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %85 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %84, i32 0, i32 5
  %86 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %87 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_12__* %85, i32 %88)
  br label %90

90:                                               ; preds = %73, %61
  br label %161

91:                                               ; preds = %57
  %92 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %93 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %98 = call i32 @intel_dp_max_common_lane_count(%struct.intel_dp* %97)
  %99 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %100 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %102 = call i32 @intel_dp_max_common_rate(%struct.intel_dp* %101)
  %103 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %104 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %106 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %96, %91
  %108 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %109 = call i32 @intel_dp_print_rates(%struct.intel_dp* %108)
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %111 = call i32 @INTEL_GEN(%struct.drm_i915_private* %110)
  %112 = icmp sge i32 %111, 11
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %115 = call i32 @intel_dp_get_dsc_sink_cap(%struct.intel_dp* %114)
  br label %116

116:                                              ; preds = %113, %107
  %117 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %118 = call i32 @intel_dp_configure_mst(%struct.intel_dp* %117)
  %119 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %120 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %124, i32* %12, align 4
  br label %161

125:                                              ; preds = %116
  %126 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %127 = call i64 @intel_dp_is_edp(%struct.intel_dp* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %125
  %130 = load %struct.intel_encoder*, %struct.intel_encoder** %11, align 8
  %131 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %6, align 8
  %132 = call i32 @intel_dp_retrain_link(%struct.intel_encoder* %130, %struct.drm_modeset_acquire_ctx* %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %4, align 4
  br label %177

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %125
  %139 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %140 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %143 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %146 = call i32 @intel_dp_set_edid(%struct.intel_dp* %145)
  %147 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %148 = call i64 @intel_dp_is_edp(%struct.intel_dp* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %138
  %151 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %152 = call %struct.TYPE_11__* @to_intel_connector(%struct.drm_connector* %151)
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150, %138
  %157 = load i32, i32* @connector_status_connected, align 4
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %156, %150
  %159 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %160 = call i32 @intel_dp_check_service_irq(%struct.intel_dp* %159)
  br label %161

161:                                              ; preds = %158, %123, %90
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @connector_status_connected, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %167 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %172 = call i32 @intel_dp_unset_edid(%struct.intel_dp* %171)
  br label %173

173:                                              ; preds = %170, %165, %161
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %175 = call i32 @intel_display_power_flush_work(%struct.drm_i915_private* %174)
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %173, %135
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_modeset_is_locked(i32*) #1

declare dso_local i64 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @edp_detect(%struct.intel_dp*) #1

declare dso_local i64 @intel_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @intel_dp_detect_dpcd(%struct.intel_dp*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @intel_dp_max_common_lane_count(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_max_common_rate(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_print_rates(%struct.intel_dp*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dp_get_dsc_sink_cap(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_configure_mst(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_retrain_link(%struct.intel_encoder*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @intel_dp_set_edid(%struct.intel_dp*) #1

declare dso_local %struct.TYPE_11__* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @intel_dp_check_service_irq(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_unset_edid(%struct.intel_dp*) #1

declare dso_local i32 @intel_display_power_flush_work(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
