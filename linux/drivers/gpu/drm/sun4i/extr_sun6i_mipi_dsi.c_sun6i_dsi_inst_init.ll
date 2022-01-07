; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_inst_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_inst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32 }
%struct.mipi_dsi_device = type { i64 }

@DSI_INST_ID_LP11 = common dso_local global i32 0, align 4
@DSI_INST_MODE_STOP = common dso_local global i32 0, align 4
@DSI_INST_ID_TBA = common dso_local global i32 0, align 4
@DSI_INST_MODE_TBA = common dso_local global i32 0, align 4
@DSI_INST_ID_HSC = common dso_local global i32 0, align 4
@DSI_INST_MODE_HS = common dso_local global i32 0, align 4
@DSI_INST_PACK_PIXEL = common dso_local global i32 0, align 4
@DSI_INST_ID_HSD = common dso_local global i32 0, align 4
@DSI_INST_ID_LPDT = common dso_local global i32 0, align 4
@DSI_INST_MODE_ESCAPE = common dso_local global i32 0, align 4
@DSI_INST_PACK_COMMAND = common dso_local global i32 0, align 4
@DSI_INST_ESCA_LPDT = common dso_local global i32 0, align 4
@DSI_INST_ID_HSCEXIT = common dso_local global i32 0, align 4
@DSI_INST_MODE_HSCEXIT = common dso_local global i32 0, align 4
@DSI_INST_ID_NOP = common dso_local global i32 0, align 4
@DSI_INST_ID_DLY = common dso_local global i32 0, align 4
@DSI_INST_MODE_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_dsi*, %struct.mipi_dsi_device*)* @sun6i_dsi_inst_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dsi_inst_init(%struct.sun6i_dsi* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca %struct.sun6i_dsi*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %3, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %4, align 8
  %6 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %7 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %8, 1
  %10 = call i32 @GENMASK(i64 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %12 = load i32, i32* @DSI_INST_ID_LP11, align 4
  %13 = load i32, i32* @DSI_INST_MODE_STOP, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi* %11, i32 %12, i32 %13, i32 1, i32 %14, i32 0, i32 0)
  %16 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %17 = load i32, i32* @DSI_INST_ID_TBA, align 4
  %18 = load i32, i32* @DSI_INST_MODE_TBA, align 4
  %19 = call i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi* %16, i32 %17, i32 %18, i32 0, i32 1, i32 0, i32 0)
  %20 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %21 = load i32, i32* @DSI_INST_ID_HSC, align 4
  %22 = load i32, i32* @DSI_INST_MODE_HS, align 4
  %23 = load i32, i32* @DSI_INST_PACK_PIXEL, align 4
  %24 = call i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi* %20, i32 %21, i32 %22, i32 1, i32 0, i32 %23, i32 0)
  %25 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %26 = load i32, i32* @DSI_INST_ID_HSD, align 4
  %27 = load i32, i32* @DSI_INST_MODE_HS, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DSI_INST_PACK_PIXEL, align 4
  %30 = call i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi* %25, i32 %26, i32 %27, i32 0, i32 %28, i32 %29, i32 0)
  %31 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %32 = load i32, i32* @DSI_INST_ID_LPDT, align 4
  %33 = load i32, i32* @DSI_INST_MODE_ESCAPE, align 4
  %34 = load i32, i32* @DSI_INST_PACK_COMMAND, align 4
  %35 = load i32, i32* @DSI_INST_ESCA_LPDT, align 4
  %36 = call i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi* %31, i32 %32, i32 %33, i32 0, i32 1, i32 %34, i32 %35)
  %37 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %38 = load i32, i32* @DSI_INST_ID_HSCEXIT, align 4
  %39 = load i32, i32* @DSI_INST_MODE_HSCEXIT, align 4
  %40 = call i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi* %37, i32 %38, i32 %39, i32 1, i32 0, i32 0, i32 0)
  %41 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %42 = load i32, i32* @DSI_INST_ID_NOP, align 4
  %43 = load i32, i32* @DSI_INST_MODE_STOP, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi* %41, i32 %42, i32 %43, i32 0, i32 %44, i32 0, i32 0)
  %46 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %47 = load i32, i32* @DSI_INST_ID_DLY, align 4
  %48 = load i32, i32* @DSI_INST_MODE_NOP, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi* %46, i32 %47, i32 %48, i32 1, i32 %49, i32 0, i32 0)
  %51 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %52 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SUN6I_DSI_INST_JUMP_CFG_REG(i32 0)
  %55 = load i32, i32* @DSI_INST_ID_NOP, align 4
  %56 = call i32 @SUN6I_DSI_INST_JUMP_CFG_POINT(i32 %55)
  %57 = load i32, i32* @DSI_INST_ID_HSCEXIT, align 4
  %58 = call i32 @SUN6I_DSI_INST_JUMP_CFG_TO(i32 %57)
  %59 = or i32 %56, %58
  %60 = call i32 @SUN6I_DSI_INST_JUMP_CFG_NUM(i32 1)
  %61 = or i32 %59, %60
  %62 = call i32 @regmap_write(i32 %53, i32 %54, i32 %61)
  ret void
}

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @sun6i_dsi_inst_setup(%struct.sun6i_dsi*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_INST_JUMP_CFG_REG(i32) #1

declare dso_local i32 @SUN6I_DSI_INST_JUMP_CFG_POINT(i32) #1

declare dso_local i32 @SUN6I_DSI_INST_JUMP_CFG_TO(i32) #1

declare dso_local i32 @SUN6I_DSI_INST_JUMP_CFG_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
