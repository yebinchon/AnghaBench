; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_dw_hdmi = type { %struct.sun8i_hdmi_phy* }
%struct.sun8i_hdmi_phy = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun8i_hdmi_phy_remove(%struct.sun8i_dw_hdmi* %0) #0 {
  %2 = alloca %struct.sun8i_dw_hdmi*, align 8
  %3 = alloca %struct.sun8i_hdmi_phy*, align 8
  store %struct.sun8i_dw_hdmi* %0, %struct.sun8i_dw_hdmi** %2, align 8
  %4 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %2, align 8
  %5 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %4, i32 0, i32 0
  %6 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %5, align 8
  store %struct.sun8i_hdmi_phy* %6, %struct.sun8i_hdmi_phy** %3, align 8
  %7 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %8 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_disable_unprepare(i32 %9)
  %11 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %12 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  %15 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %16 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  %19 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %20 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @reset_control_assert(i32 %21)
  %23 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %24 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @reset_control_put(i32 %25)
  %27 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %28 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_put(i32 %29)
  %31 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %32 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_put(i32 %33)
  %35 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %36 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_put(i32 %37)
  %39 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %40 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_put(i32 %41)
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_put(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
