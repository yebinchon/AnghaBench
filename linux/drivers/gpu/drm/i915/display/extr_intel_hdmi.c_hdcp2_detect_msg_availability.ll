; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hdcp2_detect_msg_availability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hdcp2_detect_msg_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32 }

@HDCP_2_2_HDMI_RXSTATUS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rx_status read failed. Err %d\0A\00", align 1
@HDCP_2_2_REP_SEND_RECVID_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32, i32*, i32*)* @hdcp2_detect_msg_availability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_detect_msg_availability(%struct.intel_digital_port* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @HDCP_2_2_HDMI_RXSTATUS_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %19 = call i32 @intel_hdmi_hdcp2_read_rx_status(%struct.intel_digital_port* %18, i32* %17)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %56

26:                                               ; preds = %4
  %27 = getelementptr inbounds i32, i32* %17, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @HDCP_2_2_HDMI_RXSTATUS_MSG_SZ_HI(i32 %28)
  %30 = shl i32 %29, 8
  %31 = getelementptr inbounds i32, i32* %17, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = or i32 %30, %32
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @HDCP_2_2_REP_SEND_RECVID_LIST, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %26
  %39 = getelementptr inbounds i32, i32* %17, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @HDCP_2_2_HDMI_RXSTATUS_READY(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %55

51:                                               ; preds = %26
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %47
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @intel_hdmi_hdcp2_read_rx_status(%struct.intel_digital_port*, i32*) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #2

declare dso_local i32 @HDCP_2_2_HDMI_RXSTATUS_MSG_SZ_HI(i32) #2

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
