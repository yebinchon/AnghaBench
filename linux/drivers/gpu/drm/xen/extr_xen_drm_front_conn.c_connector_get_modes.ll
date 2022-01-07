; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_conn.c_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_conn.c_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.xen_drm_front_drm_pipeline = type { i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XEN_DRM_CRTC_VREFRESH_HZ = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.videomode, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_connector* %9)
  store %struct.xen_drm_front_drm_pipeline* %10, %struct.xen_drm_front_drm_pipeline** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_display_mode* @drm_mode_create(i32 %13)
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %5, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = icmp ne %struct.drm_display_mode* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

18:                                               ; preds = %1
  %19 = call i32 @memset(%struct.videomode* %6, i32 0, i32 36)
  %20 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %4, align 8
  %21 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %4, align 8
  %25 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %29, %31
  %33 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %32, %34
  %36 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %7, align 4
  %39 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %40, %42
  %44 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* @XEN_DRM_CRTC_VREFRESH_HZ, align 4
  %54 = mul nsw i32 %52, %53
  %55 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %57 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = call i32 @drm_display_mode_from_videomode(%struct.videomode* %6, %struct.drm_display_mode* %61)
  %63 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %65 = call i32 @drm_mode_probed_add(%struct.drm_connector* %63, %struct.drm_display_mode* %64)
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %18, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @memset(%struct.videomode*, i32, i32) #1

declare dso_local i32 @drm_display_mode_from_videomode(%struct.videomode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
