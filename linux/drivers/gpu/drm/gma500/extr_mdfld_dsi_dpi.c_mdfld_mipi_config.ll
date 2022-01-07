; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_mipi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_mipi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_config = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdfld_dsi_config*, i32)* @mdfld_mipi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfld_mipi_config(%struct.mdfld_dsi_config* %0, i32 %1) #0 {
  %3 = alloca %struct.mdfld_dsi_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.mdfld_dsi_config* %0, %struct.mdfld_dsi_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %8 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %11 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 @MIPI_PORT_CONTROL(i32 0)
  %17 = call i32 @REG_WRITE(i32 %16, i32 2)
  %18 = call i32 @MIPI_PORT_CONTROL(i32 2)
  %19 = call i32 @REG_WRITE(i32 %18, i32 -2147483648)
  br label %25

20:                                               ; preds = %2
  %21 = call i32 @MIPI_PORT_CONTROL(i32 0)
  %22 = call i32 @REG_WRITE(i32 %21, i32 -2147418112)
  %23 = call i32 @MIPI_PORT_CONTROL(i32 2)
  %24 = call i32 @REG_WRITE(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @MIPI_DPHY_PARAM_REG(i32 %26)
  %28 = call i32 @REG_WRITE(i32 %27, i32 353001487)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @MIPI_VIDEO_MODE_FORMAT_REG(i32 %29)
  %31 = call i32 @REG_WRITE(i32 %30, i32 15)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @MIPI_DSI_FUNC_PRG_REG(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = or i32 512, %34
  %36 = call i32 @REG_WRITE(i32 %33, i32 %35)
  %37 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @mdfld_mipi_set_video_timing(%struct.mdfld_dsi_config* %37, i32 %38)
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_PORT_CONTROL(i32) #1

declare dso_local i32 @MIPI_DPHY_PARAM_REG(i32) #1

declare dso_local i32 @MIPI_VIDEO_MODE_FORMAT_REG(i32) #1

declare dso_local i32 @MIPI_DSI_FUNC_PRG_REG(i32) #1

declare dso_local i32 @mdfld_mipi_set_video_timing(%struct.mdfld_dsi_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
