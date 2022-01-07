; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_power_on_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_power_on_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { i32, i32, i32 }

@DSS_HDMI_M_PCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hdmi*)* @hdmi_power_on_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_power_on_core(%struct.omap_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hdmi*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %3, align 8
  %5 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %6 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @regulator_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %15 = call i32 @hdmi_runtime_get(%struct.omap_hdmi* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %27

19:                                               ; preds = %13
  %20 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %21 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DSS_HDMI_M_PCLK, align 4
  %24 = call i32 @dss_select_hdmi_venc_clk_source(i32 %22, i32 %23)
  %25 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %26 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %29 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regulator_disable(i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %19, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @hdmi_runtime_get(%struct.omap_hdmi*) #1

declare dso_local i32 @dss_select_hdmi_venc_clk_source(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
