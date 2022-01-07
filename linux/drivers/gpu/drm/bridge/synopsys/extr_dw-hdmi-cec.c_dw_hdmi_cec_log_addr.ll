; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.dw_hdmi_cec = type { i32 }

@CEC_LOG_ADDR_INVALID = common dso_local global i64 0, align 8
@HDMI_CEC_ADDR_L = common dso_local global i32 0, align 4
@HDMI_CEC_ADDR_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i64)* @dw_hdmi_cec_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_cec_log_addr(%struct.cec_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dw_hdmi_cec*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %7 = call %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter* %6)
  store %struct.dw_hdmi_cec* %7, %struct.dw_hdmi_cec** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @CEC_LOG_ADDR_INVALID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %13 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @BIT(i32 %16)
  %18 = call i32 @BIT(i32 15)
  %19 = or i32 %17, %18
  %20 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %21 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %14, %11
  %25 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %26 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %27 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = load i32, i32* @HDMI_CEC_ADDR_L, align 4
  %31 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %25, i32 %29, i32 %30)
  %32 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %33 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %34 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = load i32, i32* @HDMI_CEC_ADDR_H, align 4
  %38 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %32, i32 %36, i32 %37)
  ret i32 0
}

declare dso_local %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dw_hdmi_write(%struct.dw_hdmi_cec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
