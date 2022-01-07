; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_power_on_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_power_on_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

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
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regulator_enable(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %22 = call i32 @hdmi_runtime_get(%struct.omap_hdmi* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %37

26:                                               ; preds = %20
  %27 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %28 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %27, i32 0, i32 1
  %29 = call i32 @hdmi4_core_powerdown_disable(%struct.TYPE_2__* %28)
  %30 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %31 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DSS_HDMI_M_PCLK, align 4
  %34 = call i32 @dss_select_hdmi_venc_clk_source(i32 %32, i32 %33)
  %35 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %36 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %49

37:                                               ; preds = %25
  %38 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %39 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_disable(i32 %40)
  br label %42

42:                                               ; preds = %37, %19
  %43 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %44 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %26, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @hdmi_runtime_get(%struct.omap_hdmi*) #1

declare dso_local i32 @hdmi4_core_powerdown_disable(%struct.TYPE_2__*) #1

declare dso_local i32 @dss_select_hdmi_venc_clk_source(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
