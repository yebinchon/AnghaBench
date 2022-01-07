; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32* }
%struct.dw_hdmi_cec = type { i32 }

@CEC_CTRL_RETRY = common dso_local global i32 0, align 4
@CEC_CTRL_NORMAL = common dso_local global i32 0, align 4
@CEC_CTRL_IMMED = common dso_local global i32 0, align 4
@HDMI_CEC_TX_DATA0 = common dso_local global i64 0, align 8
@HDMI_CEC_TX_CNT = common dso_local global i64 0, align 8
@CEC_CTRL_START = common dso_local global i32 0, align 4
@HDMI_CEC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @dw_hdmi_cec_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_cec_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca %struct.dw_hdmi_cec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %12 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %13 = call %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter* %12)
  store %struct.dw_hdmi_cec* %13, %struct.dw_hdmi_cec** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %18 [
    i32 128, label %15
    i32 130, label %17
    i32 129, label %20
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @CEC_CTRL_RETRY, align 4
  store i32 %16, i32* %11, align 4
  br label %22

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %4, %17
  %19 = load i32, i32* @CEC_CTRL_NORMAL, align 4
  store i32 %19, i32* %11, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @CEC_CTRL_IMMED, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %20, %18, %15
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %26 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %9, align 8
  %31 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %32 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @HDMI_CEC_TX_DATA0, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %30, i32 %37, i64 %41)
  br label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %23

46:                                               ; preds = %23
  %47 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %9, align 8
  %48 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %49 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @HDMI_CEC_TX_CNT, align 8
  %52 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %47, i32 %50, i64 %51)
  %53 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @CEC_CTRL_START, align 4
  %56 = or i32 %54, %55
  %57 = load i64, i64* @HDMI_CEC_CTRL, align 8
  %58 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %53, i32 %56, i64 %57)
  ret i32 0
}

declare dso_local %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @dw_hdmi_write(%struct.dw_hdmi_cec*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
