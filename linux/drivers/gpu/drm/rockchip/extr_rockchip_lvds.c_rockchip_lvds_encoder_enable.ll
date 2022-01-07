; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.rockchip_lvds = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to power on lvds: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @rockchip_lvds_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_lvds_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.rockchip_lvds*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.rockchip_lvds* @encoder_to_lvds(%struct.drm_encoder* %6)
  store %struct.rockchip_lvds* %7, %struct.rockchip_lvds** %3, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.drm_display_mode* %13, %struct.drm_display_mode** %4, align 8
  %14 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %15 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @drm_panel_prepare(i32 %16)
  %18 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %19 = call i32 @rockchip_lvds_poweron(%struct.rockchip_lvds* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %24 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DRM_DEV_ERROR(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %29 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @drm_panel_unprepare(i32 %30)
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = call i32 @rockchip_lvds_grf_config(%struct.drm_encoder* %33, %struct.drm_display_mode* %34)
  %36 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %38 = call i32 @rockchip_lvds_set_vop_source(%struct.rockchip_lvds* %36, %struct.drm_encoder* %37)
  %39 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %40 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @drm_panel_enable(i32 %41)
  ret void
}

declare dso_local %struct.rockchip_lvds* @encoder_to_lvds(%struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_prepare(i32) #1

declare dso_local i32 @rockchip_lvds_poweron(%struct.rockchip_lvds*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @drm_panel_unprepare(i32) #1

declare dso_local i32 @rockchip_lvds_grf_config(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @rockchip_lvds_set_vop_source(%struct.rockchip_lvds*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
