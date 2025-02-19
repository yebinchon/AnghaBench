; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_reset_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_reset_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.msm_dsi_host = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_DSI_PHY_RESET = common dso_local global i32 0, align 4
@DSI_PHY_RESET_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dsi_host_reset_phy(%struct.mipi_dsi_host* %0) #0 {
  %2 = alloca %struct.mipi_dsi_host*, align 8
  %3 = alloca %struct.msm_dsi_host*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %2, align 8
  %4 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %2, align 8
  %5 = call %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host* %4)
  store %struct.msm_dsi_host* %5, %struct.msm_dsi_host** %3, align 8
  %6 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %8 = load i32, i32* @REG_DSI_PHY_RESET, align 4
  %9 = load i32, i32* @DSI_PHY_RESET_RESET, align 4
  %10 = call i32 @dsi_write(%struct.msm_dsi_host* %7, i32 %8, i32 %9)
  %11 = call i32 (...) @wmb()
  %12 = call i32 @udelay(i32 1000)
  %13 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %14 = load i32, i32* @REG_DSI_PHY_RESET, align 4
  %15 = call i32 @dsi_write(%struct.msm_dsi_host* %13, i32 %14, i32 0)
  %16 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
