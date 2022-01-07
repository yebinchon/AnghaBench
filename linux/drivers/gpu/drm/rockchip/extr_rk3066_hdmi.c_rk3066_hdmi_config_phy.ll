; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_config_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_config_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3066_hdmi = type { i32 }

@HDMI_DEEP_COLOR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3066_hdmi*)* @rk3066_hdmi_config_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3066_hdmi_config_phy(%struct.rk3066_hdmi* %0) #0 {
  %2 = alloca %struct.rk3066_hdmi*, align 8
  store %struct.rk3066_hdmi* %0, %struct.rk3066_hdmi** %2, align 8
  %3 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %4 = load i32, i32* @HDMI_DEEP_COLOR_MODE, align 4
  %5 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %3, i32 %4, i32 34)
  %6 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %7 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 100000000
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %12 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %11, i32 344, i32 14)
  %13 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %14 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %13, i32 348, i32 0)
  %15 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %16 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %15, i32 352, i32 96)
  %17 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %18 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %17, i32 356, i32 0)
  %19 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %20 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %19, i32 360, i32 218)
  %21 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %22 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %21, i32 364, i32 161)
  %23 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %24 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %23, i32 368, i32 14)
  %25 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %26 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %25, i32 372, i32 34)
  %27 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %28 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %27, i32 376, i32 0)
  br label %73

29:                                               ; preds = %1
  %30 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %31 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 50000000
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %36 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %35, i32 344, i32 6)
  %37 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %38 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %37, i32 348, i32 0)
  %39 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %40 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %39, i32 352, i32 96)
  %41 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %42 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %41, i32 356, i32 0)
  %43 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %44 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %43, i32 360, i32 202)
  %45 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %46 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %45, i32 364, i32 163)
  %47 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %48 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %47, i32 368, i32 14)
  %49 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %50 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %49, i32 372, i32 32)
  %51 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %52 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %51, i32 376, i32 0)
  br label %72

53:                                               ; preds = %29
  %54 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %55 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %54, i32 344, i32 2)
  %56 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %57 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %56, i32 348, i32 0)
  %58 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %59 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %58, i32 352, i32 96)
  %60 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %61 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %60, i32 356, i32 0)
  %62 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %63 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %62, i32 360, i32 194)
  %64 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %65 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %64, i32 364, i32 162)
  %66 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %67 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %66, i32 368, i32 14)
  %68 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %69 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %68, i32 372, i32 32)
  %70 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %2, align 8
  %71 = call i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi* %70, i32 376, i32 0)
  br label %72

72:                                               ; preds = %53, %34
  br label %73

73:                                               ; preds = %72, %10
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

declare dso_local i32 @rk3066_hdmi_phy_write(%struct.rk3066_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
