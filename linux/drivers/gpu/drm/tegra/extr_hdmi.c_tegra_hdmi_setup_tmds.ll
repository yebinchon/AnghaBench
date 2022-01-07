; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_tmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_tmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.tmds_config = type { i32, i32, i32, i32, i32 }

@HDMI_NV_PDISP_SOR_PLL0 = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_PLL1 = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_PE_CURRENT = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_hdmi*, %struct.tmds_config*)* @tegra_hdmi_setup_tmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_setup_tmds(%struct.tegra_hdmi* %0, %struct.tmds_config* %1) #0 {
  %3 = alloca %struct.tegra_hdmi*, align 8
  %4 = alloca %struct.tmds_config*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_hdmi* %0, %struct.tegra_hdmi** %3, align 8
  store %struct.tmds_config* %1, %struct.tmds_config** %4, align 8
  %6 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %7 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %8 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HDMI_NV_PDISP_SOR_PLL0, align 4
  %11 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %6, i32 %9, i32 %10)
  %12 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %13 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %14 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HDMI_NV_PDISP_SOR_PLL1, align 4
  %17 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %12, i32 %15, i32 %16)
  %18 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %19 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %20 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HDMI_NV_PDISP_PE_CURRENT, align 4
  %23 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %18, i32 %21, i32 %22)
  %24 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %25 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %26 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT, align 4
  %29 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %24, i32 %27, i32 %28)
  %30 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %31 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @tegra_hdmi_readl(%struct.tegra_hdmi* %30, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %44, i32 %45, i32 %50)
  %52 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %2
  %59 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %3, align 8
  %60 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %61 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT, align 4
  %64 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %59, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %2
  ret void
}

declare dso_local i32 @tegra_hdmi_writel(%struct.tegra_hdmi*, i32, i32) #1

declare dso_local i32 @tegra_hdmi_readl(%struct.tegra_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
