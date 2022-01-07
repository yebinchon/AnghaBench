; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.msm_dsi_host = type { i32, i32 }

@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_dsi_host_disable(%struct.mipi_dsi_host* %0) #0 {
  %2 = alloca %struct.mipi_dsi_host*, align 8
  %3 = alloca %struct.msm_dsi_host*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %2, align 8
  %4 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %2, align 8
  %5 = call %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host* %4)
  store %struct.msm_dsi_host* %5, %struct.msm_dsi_host** %3, align 8
  %6 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %7 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %9 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %10 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @dsi_op_mode_config(%struct.msm_dsi_host* %8, i32 %17, i32 0)
  %19 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %20 = call i32 @dsi_sw_reset(%struct.msm_dsi_host* %19)
  ret i32 0
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @dsi_op_mode_config(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @dsi_sw_reset(%struct.msm_dsi_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
