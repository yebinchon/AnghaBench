; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_dcs_write_buf_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_dcs_write_buf_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otm8009a = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otm8009a*, i8*, i64)* @otm8009a_dcs_write_buf_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otm8009a_dcs_write_buf_hs(%struct.otm8009a* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.otm8009a*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mipi_dsi_device*, align 8
  store %struct.otm8009a* %0, %struct.otm8009a** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %9 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %10)
  store %struct.mipi_dsi_device* %11, %struct.mipi_dsi_device** %7, align 8
  %12 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %7, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @otm8009a_dcs_write_buf(%struct.otm8009a* %18, i8* %19, i64 %20)
  %22 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %7, align 8
  %24 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  ret void
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @otm8009a_dcs_write_buf(%struct.otm8009a*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
