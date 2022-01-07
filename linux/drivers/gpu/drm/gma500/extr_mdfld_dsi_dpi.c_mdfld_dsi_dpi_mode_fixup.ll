; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mdfld_dsi_encoder = type { i32 }
%struct.mdfld_dsi_config = type { %struct.drm_display_mode* }

@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdfld_dsi_dpi_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.mdfld_dsi_encoder*, align 8
  %8 = alloca %struct.mdfld_dsi_config*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %11 = call %struct.mdfld_dsi_encoder* @mdfld_dsi_encoder(%struct.drm_encoder* %10)
  store %struct.mdfld_dsi_encoder* %11, %struct.mdfld_dsi_encoder** %7, align 8
  %12 = load %struct.mdfld_dsi_encoder*, %struct.mdfld_dsi_encoder** %7, align 8
  %13 = call %struct.mdfld_dsi_config* @mdfld_dsi_encoder_get_config(%struct.mdfld_dsi_encoder* %12)
  store %struct.mdfld_dsi_config* %13, %struct.mdfld_dsi_config** %8, align 8
  %14 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %8, align 8
  %15 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %14, i32 0, i32 0
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %15, align 8
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %9, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %18 = icmp ne %struct.drm_display_mode* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %3
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %66 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %67 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %65, i32 %66)
  br label %68

68:                                               ; preds = %19, %3
  ret i32 1
}

declare dso_local %struct.mdfld_dsi_encoder* @mdfld_dsi_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdfld_dsi_config* @mdfld_dsi_encoder_get_config(%struct.mdfld_dsi_encoder*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
