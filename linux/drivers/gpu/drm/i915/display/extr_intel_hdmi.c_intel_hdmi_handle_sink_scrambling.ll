; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_handle_sink_scrambling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_handle_sink_scrambling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.drm_connector = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_scrambling }
%struct.drm_scrambling = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"[CONNECTOR:%d:%s] scrambling=%s, TMDS bit clock ratio=1/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdmi_handle_sink_scrambling(%struct.intel_encoder* %0, %struct.drm_connector* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.intel_hdmi*, align 8
  %12 = alloca %struct.drm_scrambling*, align 8
  %13 = alloca %struct.i2c_adapter*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %6, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %10, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 0
  %21 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_10__* %20)
  store %struct.intel_hdmi* %21, %struct.intel_hdmi** %11, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.drm_scrambling* %26, %struct.drm_scrambling** %12, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %28 = load %struct.intel_hdmi*, %struct.intel_hdmi** %11, align 8
  %29 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %27, i32 %30)
  store %struct.i2c_adapter* %31, %struct.i2c_adapter** %13, align 8
  %32 = load %struct.drm_scrambling*, %struct.drm_scrambling** %12, align 8
  %33 = getelementptr inbounds %struct.drm_scrambling, %struct.drm_scrambling* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %64

37:                                               ; preds = %4
  %38 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @yesno(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 40, i32 10
  %51 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %46, i32 %50)
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @drm_scdc_set_high_tmds_clock_ratio(%struct.i2c_adapter* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %37
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @drm_scdc_set_scrambling(%struct.i2c_adapter* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %56, %37
  %62 = phi i1 [ false, %37 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %36
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_10__*) #1

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i64 @drm_scdc_set_high_tmds_clock_ratio(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @drm_scdc_set_scrambling(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
