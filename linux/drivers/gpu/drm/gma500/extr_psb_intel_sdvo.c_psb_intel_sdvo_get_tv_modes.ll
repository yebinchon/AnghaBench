; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_tv_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_get_tv_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.psb_intel_sdvo = type { i32, i32 }
%struct.psb_intel_sdvo_sdtv_resolution_request = type { i32 }
%struct.drm_display_mode = type { i32 }

@SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT = common dso_local global i32 0, align 4
@sdvo_tv_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @psb_intel_sdvo_get_tv_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_get_tv_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.psb_intel_sdvo*, align 8
  %4 = alloca %struct.psb_intel_sdvo_sdtv_resolution_request, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %9)
  store %struct.psb_intel_sdvo* %10, %struct.psb_intel_sdvo** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %12 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %6, align 4
  %15 = call i32 @min(i32 4, i32 4)
  %16 = call i32 @memcpy(%struct.psb_intel_sdvo_sdtv_resolution_request* %4, i32* %6, i32 %15)
  %17 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %18 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %19 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @psb_intel_sdvo_set_target_output(%struct.psb_intel_sdvo* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %68

24:                                               ; preds = %1
  %25 = call i32 @BUILD_BUG_ON(i32 1)
  %26 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %27 = load i32, i32* @SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT, align 4
  %28 = call i32 @psb_intel_sdvo_write_cmd(%struct.psb_intel_sdvo* %26, i32 %27, %struct.psb_intel_sdvo_sdtv_resolution_request* %4, i32 4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %68

31:                                               ; preds = %24
  %32 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %3, align 8
  %33 = call i32 @psb_intel_sdvo_read_response(%struct.psb_intel_sdvo* %32, i32* %5, i32 3)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %68

36:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** @sdvo_tv_modes, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @sdvo_tv_modes, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %51, i32* %55)
  store %struct.drm_display_mode* %56, %struct.drm_display_mode** %8, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %58 = icmp ne %struct.drm_display_mode* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %62 = call i32 @drm_mode_probed_add(%struct.drm_connector* %60, %struct.drm_display_mode* %61)
  br label %63

63:                                               ; preds = %59, %48
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %37

68:                                               ; preds = %23, %30, %35, %37
  ret void
}

declare dso_local %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local i32 @memcpy(%struct.psb_intel_sdvo_sdtv_resolution_request*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @psb_intel_sdvo_set_target_output(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @psb_intel_sdvo_write_cmd(%struct.psb_intel_sdvo*, i32, %struct.psb_intel_sdvo_sdtv_resolution_request*, i32) #1

declare dso_local i32 @psb_intel_sdvo_read_response(%struct.psb_intel_sdvo*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
