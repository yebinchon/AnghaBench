; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_dsc_fec_support_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_dsc_fec_support_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_connector* }
%struct.drm_connector = type { i64, %struct.TYPE_6__*, %struct.drm_device* }
%struct.TYPE_6__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32, i32 }
%struct.drm_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_dp = type { i32, i32, i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DRM_MODESET_ACQUIRE_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DSC_Enabled: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DSC_Sink_Support: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Force_DSC_Enable: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"FEC_Sink_Support: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_dsc_fec_support_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_dsc_fec_support_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.intel_dp*, align 8
  %9 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %10 = alloca %struct.intel_crtc_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load %struct.drm_connector*, %struct.drm_connector** %14, align 8
  store %struct.drm_connector* %15, %struct.drm_connector** %5, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 2
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %6, align 8
  store %struct.intel_crtc_state* null, %struct.intel_crtc_state** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @DRM_MODESET_ACQUIRE_INTERRUPTIBLE, align 4
  %20 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %9, i32 %19)
  br label %21

21:                                               ; preds = %115, %2
  store i32 0, i32* %12, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @drm_modeset_lock(i32* %24, %struct.drm_modeset_acquire_ctx* %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @EDEADLK, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 1, i32* %12, align 4
  br label %115

37:                                               ; preds = %33, %28
  br label %118

38:                                               ; preds = %21
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %42, align 8
  store %struct.drm_crtc* %43, %struct.drm_crtc** %7, align 8
  %44 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @connector_status_connected, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %51 = icmp ne %struct.drm_crtc* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %38
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %118

55:                                               ; preds = %49
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %57 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %56, i32 0, i32 1
  %58 = call i32 @drm_modeset_lock(i32* %57, %struct.drm_modeset_acquire_ctx* %9)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @EDEADLK, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %9)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  br label %115

68:                                               ; preds = %63
  br label %118

69:                                               ; preds = %55
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %118

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %76 = call %struct.TYPE_8__* @intel_attached_encoder(%struct.drm_connector* %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call %struct.intel_dp* @enc_to_intel_dp(i32* %77)
  store %struct.intel_dp* %78, %struct.intel_dp** %8, align 8
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %80 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.intel_crtc_state* @to_intel_crtc_state(i32 %81)
  store %struct.intel_crtc_state* %82, %struct.intel_crtc_state** %10, align 8
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %10, align 8
  %85 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @yesno(i32 %87)
  %89 = call i32 @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %92 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @drm_dp_sink_supports_dsc(i32 %93)
  %95 = call i32 @yesno(i32 %94)
  %96 = call i32 @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %99 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @yesno(i32 %100)
  %102 = call i32 @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %104 = call i32 @intel_dp_is_edp(%struct.intel_dp* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %74
  %107 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %108 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %109 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @drm_dp_sink_supports_fec(i32 %110)
  %112 = call i32 @yesno(i32 %111)
  %113 = call i32 @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %106, %74
  br label %115

115:                                              ; preds = %114, %67, %36
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %21, label %118

118:                                              ; preds = %115, %72, %68, %52, %37
  %119 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %9)
  %120 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %9)
  %121 = load i32, i32* %11, align 4
  ret i32 %121
}

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local i32 @drm_modeset_lock(i32*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local %struct.TYPE_8__* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local %struct.intel_crtc_state* @to_intel_crtc_state(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @drm_dp_sink_supports_dsc(i32) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_sink_supports_fec(i32) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
