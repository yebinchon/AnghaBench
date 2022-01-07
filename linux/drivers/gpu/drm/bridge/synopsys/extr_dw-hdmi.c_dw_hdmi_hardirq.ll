; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_hardirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_hardirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_PHY_STAT0 = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_hdmi_hardirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_hardirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dw_hdmi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dw_hdmi*
  store %struct.dw_hdmi* %10, %struct.dw_hdmi** %6, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %13 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %18 = call i32 @dw_hdmi_i2c_irq(%struct.dw_hdmi* %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %21 = load i32, i32* @HDMI_IH_PHY_STAT0, align 4
  %22 = call i64 @hdmi_readb(%struct.dw_hdmi* %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.dw_hdmi*, %struct.dw_hdmi** %6, align 8
  %27 = load i32, i32* @HDMI_IH_MUTE_PHY_STAT0, align 4
  %28 = call i32 @hdmi_writeb(%struct.dw_hdmi* %26, i32 -1, i32 %27)
  %29 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dw_hdmi_i2c_irq(%struct.dw_hdmi*) #1

declare dso_local i64 @hdmi_readb(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
