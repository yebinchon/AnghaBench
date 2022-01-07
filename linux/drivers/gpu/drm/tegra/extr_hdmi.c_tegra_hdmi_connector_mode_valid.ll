; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.tegra_output = type { i32 }
%struct.tegra_hdmi = type { i32 }
%struct.clk = type { i32 }

@MODE_OK = common dso_local global i32 0, align 4
@MODE_NOCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @tegra_hdmi_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hdmi_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.tegra_output*, align 8
  %6 = alloca %struct.tegra_hdmi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = call %struct.tegra_output* @connector_to_output(%struct.drm_connector* %11)
  store %struct.tegra_output* %12, %struct.tegra_output** %5, align 8
  %13 = load %struct.tegra_output*, %struct.tegra_output** %5, align 8
  %14 = call %struct.tegra_hdmi* @to_hdmi(%struct.tegra_output* %13)
  store %struct.tegra_hdmi* %14, %struct.tegra_hdmi** %6, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 1000
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* @MODE_OK, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %6, align 8
  %22 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.clk* @clk_get_parent(i32 %23)
  store %struct.clk* %24, %struct.clk** %9, align 8
  %25 = load %struct.clk*, %struct.clk** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = mul i64 %26, 4
  %28 = call i64 @clk_round_rate(%struct.clk* %25, i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @MODE_NOCLOCK, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %31, %2
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.tegra_output* @connector_to_output(%struct.drm_connector*) #1

declare dso_local %struct.tegra_hdmi* @to_hdmi(%struct.tegra_output*) #1

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
