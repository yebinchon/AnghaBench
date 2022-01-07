; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_get_lvds_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c_rcar_lvds_get_lvds_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_lvds = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"no LVDS bus format reported\0A\00", align 1
@RCAR_LVDS_MODE_JEIDA = common dso_local global i32 0, align 4
@RCAR_LVDS_MODE_VESA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unsupported LVDS bus format 0x%04x\0A\00", align 1
@DRM_BUS_FLAG_DATA_LSB_TO_MSB = common dso_local global i32 0, align 4
@RCAR_LVDS_MODE_MIRROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_lvds*)* @rcar_lvds_get_lvds_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_lvds_get_lvds_mode(%struct.rcar_lvds* %0) #0 {
  %2 = alloca %struct.rcar_lvds*, align 8
  %3 = alloca %struct.drm_display_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_lvds* %0, %struct.rcar_lvds** %2, align 8
  %5 = load %struct.rcar_lvds*, %struct.rcar_lvds** %2, align 8
  %6 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.drm_display_info* %7, %struct.drm_display_info** %3, align 8
  %8 = load %struct.rcar_lvds*, %struct.rcar_lvds** %2, align 8
  %9 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %15 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %20 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.rcar_lvds*, %struct.rcar_lvds** %2, align 8
  %25 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %63

28:                                               ; preds = %18
  %29 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %30 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %38 [
    i32 130, label %34
    i32 129, label %34
    i32 128, label %36
  ]

34:                                               ; preds = %28, %28
  %35 = load i32, i32* @RCAR_LVDS_MODE_JEIDA, align 4
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %28
  %37 = load i32, i32* @RCAR_LVDS_MODE_VESA, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %28
  %39 = load %struct.rcar_lvds*, %struct.rcar_lvds** %2, align 8
  %40 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %43 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %63

48:                                               ; preds = %36, %34
  %49 = load %struct.drm_display_info*, %struct.drm_display_info** %3, align 8
  %50 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DRM_BUS_FLAG_DATA_LSB_TO_MSB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @RCAR_LVDS_MODE_MIRROR, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.rcar_lvds*, %struct.rcar_lvds** %2, align 8
  %62 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %38, %23, %12
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
