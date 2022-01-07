; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_y420vdb_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_do_y420vdb_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_display_info, %struct.drm_device* }
%struct.drm_display_info = type { i32, %struct.drm_hdmi_info }
%struct.drm_hdmi_info = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }

@edid_cea_modes = common dso_local global i32* null, align 8
@DRM_COLOR_FORMAT_YCRCB420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32*, i32)* @do_y420vdb_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_y420vdb_modes(%struct.drm_connector* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_display_info*, align 8
  %11 = alloca %struct.drm_hdmi_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 0
  store %struct.drm_display_info* %18, %struct.drm_display_info** %10, align 8
  %19 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %20 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %19, i32 0, i32 1
  store %struct.drm_hdmi_info* %20, %struct.drm_hdmi_info** %11, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %57, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @svd_to_vic(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @drm_valid_cea_vic(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %57

36:                                               ; preds = %25
  %37 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %38 = load i32*, i32** @edid_cea_modes, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %37, i32* %41)
  store %struct.drm_display_mode* %42, %struct.drm_display_mode** %13, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %44 = icmp ne %struct.drm_display_mode* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %60

46:                                               ; preds = %36
  %47 = load %struct.drm_hdmi_info*, %struct.drm_hdmi_info** %11, align 8
  %48 = getelementptr inbounds %struct.drm_hdmi_info, %struct.drm_hdmi_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @bitmap_set(i32 %49, i32 %50, i32 1)
  %52 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %54 = call i32 @drm_mode_probed_add(%struct.drm_connector* %52, %struct.drm_display_mode* %53)
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %46, %35
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %21

60:                                               ; preds = %45, %21
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB420, align 4
  %65 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %66 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @svd_to_vic(i32) #1

declare dso_local i32 @drm_valid_cea_vic(i32) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
