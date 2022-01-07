; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_clear_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_clear_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }

@HDMI_MC_SWRSTZ_TMDSSWRST_REQ = common dso_local global i64 0, align 8
@HDMI_MC_SWRSTZ = common dso_local global i32 0, align 4
@HDMI_FC_INVIDCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @dw_hdmi_clear_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_clear_overflow(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %6 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %7 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %11 [
    i32 4874, label %9
    i32 4890, label %10
    i32 4906, label %10
    i32 8202, label %10
    i32 8218, label %10
    i32 8474, label %10
    i32 8490, label %10
  ]

9:                                                ; preds = %1
  store i32 4, i32* %3, align 4
  br label %12

10:                                               ; preds = %1, %1, %1, %1, %1, %1
  store i32 1, i32* %3, align 4
  br label %12

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %10, %9
  %13 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %14 = load i64, i64* @HDMI_MC_SWRSTZ_TMDSSWRST_REQ, align 8
  %15 = xor i64 %14, -1
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @HDMI_MC_SWRSTZ, align 4
  %18 = call i32 @hdmi_writeb(%struct.dw_hdmi* %13, i32 %16, i32 %17)
  %19 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %20 = load i32, i32* @HDMI_FC_INVIDCONF, align 4
  %21 = call i32 @hdmi_readb(%struct.dw_hdmi* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %31, %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @HDMI_FC_INVIDCONF, align 4
  %30 = call i32 @hdmi_writeb(%struct.dw_hdmi* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %22

34:                                               ; preds = %11, %22
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_readb(%struct.dw_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
