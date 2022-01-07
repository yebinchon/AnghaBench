; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_tv_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_tv_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, %struct.TYPE_3__, %struct.drm_connector_state* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_sdtv_resolution_request = type { i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT = common dso_local global i32 0, align 4
@sdvo_tv_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_sdvo_get_tv_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_tv_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_sdvo_sdtv_resolution_request, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = call %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %10)
  store %struct.intel_sdvo* %11, %struct.intel_sdvo** %3, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 3
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %13, align 8
  store %struct.drm_connector_state* %14, %struct.drm_connector_state** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %24 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  store i32 %27, i32* %7, align 4
  %28 = call i32 @min(i32 4, i32 4)
  %29 = call i32 @memcpy(%struct.intel_sdvo_sdtv_resolution_request* %5, i32* %7, i32 %28)
  %30 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %31 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %32 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @intel_sdvo_set_target_output(%struct.intel_sdvo* %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %81

37:                                               ; preds = %1
  %38 = call i32 @BUILD_BUG_ON(i32 1)
  %39 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %40 = load i32, i32* @SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT, align 4
  %41 = call i32 @intel_sdvo_write_cmd(%struct.intel_sdvo* %39, i32 %40, %struct.intel_sdvo_sdtv_resolution_request* %5, i32 4)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %81

44:                                               ; preds = %37
  %45 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %46 = call i32 @intel_sdvo_read_response(%struct.intel_sdvo* %45, i32* %6, i32 3)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %81

49:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %78, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** @sdvo_tv_modes, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** @sdvo_tv_modes, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %64, i32* %68)
  store %struct.drm_display_mode* %69, %struct.drm_display_mode** %9, align 8
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %71 = icmp ne %struct.drm_display_mode* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %75 = call i32 @drm_mode_probed_add(%struct.drm_connector* %73, %struct.drm_display_mode* %74)
  br label %76

76:                                               ; preds = %72, %61
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %50

81:                                               ; preds = %36, %43, %48, %50
  ret void
}

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.intel_sdvo_sdtv_resolution_request*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @intel_sdvo_set_target_output(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @intel_sdvo_write_cmd(%struct.intel_sdvo*, i32, %struct.intel_sdvo_sdtv_resolution_request*, i32) #1

declare dso_local i32 @intel_sdvo_read_response(%struct.intel_sdvo*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
