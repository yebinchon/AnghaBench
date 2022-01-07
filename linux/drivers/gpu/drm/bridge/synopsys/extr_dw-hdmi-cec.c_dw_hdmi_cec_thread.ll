; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.dw_hdmi_cec = type { i32, i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_hdmi_cec_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_cec_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca %struct.dw_hdmi_cec*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.cec_adapter*
  store %struct.cec_adapter* %8, %struct.cec_adapter** %5, align 8
  %9 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %10 = call %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter* %9)
  store %struct.dw_hdmi_cec* %10, %struct.dw_hdmi_cec** %6, align 8
  %11 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %6, align 8
  %12 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %6, align 8
  %17 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %19 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %6, align 8
  %20 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cec_transmit_attempt_done(%struct.cec_adapter* %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %6, align 8
  %25 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %6, align 8
  %30 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = call i32 (...) @smp_rmb()
  %32 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %33 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %6, align 8
  %34 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %33, i32 0, i32 2
  %35 = call i32 @cec_received_msg(%struct.cec_adapter* %32, i32* %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local %struct.dw_hdmi_cec* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @cec_transmit_attempt_done(%struct.cec_adapter*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @cec_received_msg(%struct.cec_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
