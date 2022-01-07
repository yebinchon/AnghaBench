; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp2_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp2_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32 }

@HDCP_2_2_HDMI_RXSTATUS_LEN = common dso_local global i32 0, align 4
@HDCP_REAUTH_REQUEST = common dso_local global i32 0, align 4
@HDCP_TOPOLOGY_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @intel_hdmi_hdcp2_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_hdcp2_check_link(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %8 = load i32, i32* @HDCP_2_2_HDMI_RXSTATUS_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %13 = call i32 @intel_hdmi_hdcp2_read_rx_status(%struct.intel_digital_port* %12, i32* %11)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %35

18:                                               ; preds = %1
  %19 = getelementptr inbounds i32, i32* %11, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @HDCP_2_2_HDMI_RXSTATUS_REAUTH_REQ(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @HDCP_REAUTH_REQUEST, align 4
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %18
  %26 = getelementptr inbounds i32, i32* %11, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @HDCP_2_2_HDMI_RXSTATUS_READY(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @HDCP_TOPOLOGY_CHANGE, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %16
  %36 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @intel_hdmi_hdcp2_read_rx_status(%struct.intel_digital_port*, i32*) #2

declare dso_local i64 @HDCP_2_2_HDMI_RXSTATUS_REAUTH_REQ(i32) #2

declare dso_local i64 @HDCP_2_2_HDMI_RXSTATUS_READY(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
