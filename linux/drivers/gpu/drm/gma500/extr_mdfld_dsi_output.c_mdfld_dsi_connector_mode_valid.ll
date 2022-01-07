; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.mdfld_dsi_connector = type { i32 }
%struct.mdfld_dsi_config = type { %struct.drm_display_mode* }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@MODE_NO_INTERLACE = common dso_local global i32 0, align 4
@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @mdfld_dsi_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdfld_dsi_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.mdfld_dsi_connector*, align 8
  %7 = alloca %struct.mdfld_dsi_config*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.mdfld_dsi_connector* @mdfld_dsi_connector(%struct.drm_connector* %9)
  store %struct.mdfld_dsi_connector* %10, %struct.mdfld_dsi_connector** %6, align 8
  %11 = load %struct.mdfld_dsi_connector*, %struct.mdfld_dsi_connector** %6, align 8
  %12 = call %struct.mdfld_dsi_config* @mdfld_dsi_get_config(%struct.mdfld_dsi_connector* %11)
  store %struct.mdfld_dsi_config* %12, %struct.mdfld_dsi_config** %7, align 8
  %13 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %7, align 8
  %14 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %13, i32 0, i32 0
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %8, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @MODE_NO_INTERLACE, align 4
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %24
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %35 = icmp ne %struct.drm_display_mode* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @MODE_PANEL, align 4
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %36
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @MODE_PANEL, align 4
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* @MODE_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %54, %44, %31, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.mdfld_dsi_connector* @mdfld_dsi_connector(%struct.drm_connector*) #1

declare dso_local %struct.mdfld_dsi_config* @mdfld_dsi_get_config(%struct.mdfld_dsi_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
