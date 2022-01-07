; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_clear_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_clear_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.hdmi_core_data = type { i32 }

@HDMI_CORE_CEC_RETRY = common dso_local global i32 0, align 4
@HDMI_CEC_RX_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*)* @hdmi_cec_clear_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_cec_clear_rx_fifo(%struct.cec_adapter* %0) #0 {
  %2 = alloca %struct.cec_adapter*, align 8
  %3 = alloca %struct.hdmi_core_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %2, align 8
  %6 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %7 = call %struct.hdmi_core_data* @cec_get_drvdata(%struct.cec_adapter* %6)
  store %struct.hdmi_core_data* %7, %struct.hdmi_core_data** %3, align 8
  %8 = load i32, i32* @HDMI_CORE_CEC_RETRY, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HDMI_CEC_RX_CONTROL, align 4
  %13 = call i32 @hdmi_write_reg(i32 %11, i32 %12, i32 3)
  %14 = load i32, i32* @HDMI_CORE_CEC_RETRY, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %3, align 8
  %20 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HDMI_CEC_RX_CONTROL, align 4
  %23 = call i32 @hdmi_read_reg(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @FLD_GET(i32 %24, i32 1, i32 0)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %15

31:                                               ; preds = %27, %15
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local %struct.hdmi_core_data* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i64 @FLD_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
