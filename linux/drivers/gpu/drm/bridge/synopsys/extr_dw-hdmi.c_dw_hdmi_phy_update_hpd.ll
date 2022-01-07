; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_update_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_phy_update_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_PHY_RX_SENSE = common dso_local global i32 0, align 4
@HDMI_PHY_MASK0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_hdmi_phy_update_hpd(%struct.dw_hdmi* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dw_hdmi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %13 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %17, %5
  %24 = load i32, i32* @HDMI_PHY_RX_SENSE, align 4
  %25 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %26 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %36

29:                                               ; preds = %20
  %30 = load i32, i32* @HDMI_PHY_RX_SENSE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %33 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %23
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %39 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %44 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %45 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HDMI_PHY_MASK0, align 4
  %48 = call i32 @hdmi_writeb(%struct.dw_hdmi* %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
