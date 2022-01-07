; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_tv_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_tv_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.drm_display_mode = type { i32 }
%struct.drm_encoder = type { i32 }

@CHIP_RS600 = common dso_local global i64 0, align 8
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @radeon_tv_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_tv_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %5, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = call %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector* %14)
  store %struct.drm_encoder* %15, %struct.drm_encoder** %7, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %17 = icmp ne %struct.drm_encoder* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_RS600, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %28 = call i32 @radeon_add_common_modes(%struct.drm_encoder* %26, %struct.drm_connector* %27)
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %30, i32 800, i32 600, i32 60, i32 0, i32 0, i32 0)
  store %struct.drm_display_mode* %31, %struct.drm_display_mode** %6, align 8
  %32 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %33 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = call i32 @drm_mode_probed_add(%struct.drm_connector* %37, %struct.drm_display_mode* %38)
  br label %40

40:                                               ; preds = %29, %25
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.drm_encoder* @radeon_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @radeon_add_common_modes(%struct.drm_encoder*, %struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
