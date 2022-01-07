; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_hdmi_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_hdmi_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown HDMI VIC: %d\0A\00", align 1
@edid_4k_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i64)* @add_hdmi_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_hdmi_mode(%struct.drm_connector* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @drm_valid_hdmi_vic(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %15)
  store i32 0, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = load i32*, i32** @edid_4k_modes, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %18, i32* %21)
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %7, align 8
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %24 = icmp ne %struct.drm_display_mode* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = call i32 @drm_mode_probed_add(%struct.drm_connector* %27, %struct.drm_display_mode* %28)
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %25, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @drm_valid_hdmi_vic(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
