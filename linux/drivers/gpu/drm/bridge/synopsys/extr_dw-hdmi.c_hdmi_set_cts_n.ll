; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_set_cts_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_set_cts_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_AUD_CTS3_CTS_MANUAL = common dso_local global i32 0, align 4
@HDMI_AUD_CTS3 = common dso_local global i32 0, align 4
@HDMI_AUD_CTS3_N_SHIFT_MASK = common dso_local global i32 0, align 4
@HDMI_AUD_CTS3_AUDCTS19_16_MASK = common dso_local global i32 0, align 4
@HDMI_AUD_CTS2 = common dso_local global i32 0, align 4
@HDMI_AUD_CTS1 = common dso_local global i32 0, align 4
@HDMI_AUD_N3 = common dso_local global i32 0, align 4
@HDMI_AUD_N2 = common dso_local global i32 0, align 4
@HDMI_AUD_N1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*, i32, i32)* @hdmi_set_cts_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_set_cts_n(%struct.dw_hdmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %8 = load i32, i32* @HDMI_AUD_CTS3_CTS_MANUAL, align 4
  %9 = load i32, i32* @HDMI_AUD_CTS3, align 4
  %10 = call i32 @hdmi_modb(%struct.dw_hdmi* %7, i32 0, i32 %8, i32 %9)
  %11 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %12 = load i32, i32* @HDMI_AUD_CTS3_N_SHIFT_MASK, align 4
  %13 = load i32, i32* @HDMI_AUD_CTS3, align 4
  %14 = call i32 @hdmi_modb(%struct.dw_hdmi* %11, i32 0, i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = lshr i32 %19, 16
  %21 = load i32, i32* @HDMI_AUD_CTS3_AUDCTS19_16_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @HDMI_AUD_CTS3_CTS_MANUAL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @HDMI_AUD_CTS3, align 4
  %26 = call i32 @hdmi_writeb(%struct.dw_hdmi* %18, i32 %24, i32 %25)
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %29 = load i32, i32* @HDMI_AUD_CTS3, align 4
  %30 = call i32 @hdmi_writeb(%struct.dw_hdmi* %28, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %27, %17
  %32 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = load i32, i32* @HDMI_AUD_CTS2, align 4
  %37 = call i32 @hdmi_writeb(%struct.dw_hdmi* %32, i32 %35, i32 %36)
  %38 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 255
  %41 = load i32, i32* @HDMI_AUD_CTS1, align 4
  %42 = call i32 @hdmi_writeb(%struct.dw_hdmi* %38, i32 %40, i32 %41)
  %43 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 15
  %47 = load i32, i32* @HDMI_AUD_N3, align 4
  %48 = call i32 @hdmi_writeb(%struct.dw_hdmi* %43, i32 %46, i32 %47)
  %49 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = lshr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = load i32, i32* @HDMI_AUD_N2, align 4
  %54 = call i32 @hdmi_writeb(%struct.dw_hdmi* %49, i32 %52, i32 %53)
  %55 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 255
  %58 = load i32, i32* @HDMI_AUD_N1, align 4
  %59 = call i32 @hdmi_writeb(%struct.dw_hdmi* %55, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @hdmi_modb(%struct.dw_hdmi*, i32, i32, i32) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
