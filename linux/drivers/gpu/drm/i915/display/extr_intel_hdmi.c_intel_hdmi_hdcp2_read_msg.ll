; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp2_read_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp2_read_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.intel_hdmi }
%struct.intel_hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"msg_sz(%zd) is more than exp size(%zu)\0A\00", align 1
@HDCP_2_2_HDMI_REG_RD_MSG_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read msg_id: %d(%zd)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32, i8*, i64)* @intel_hdmi_hdcp2_read_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_hdcp2_read_msg(%struct.intel_digital_port* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.intel_hdmi*, align 8
  %11 = alloca %struct.intel_hdcp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %15 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %14, i32 0, i32 0
  store %struct.intel_hdmi* %15, %struct.intel_hdmi** %10, align 8
  %16 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %17 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.intel_hdcp* %19, %struct.intel_hdcp** %11, align 8
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.intel_hdcp*, %struct.intel_hdcp** %11, align 8
  %23 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @intel_hdmi_hdcp2_wait_for_msg(%struct.intel_digital_port* %20, i32 %21, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %55

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  store i32 -1, i32* %5, align 4
  br label %55

40:                                               ; preds = %30
  %41 = load i32, i32* @HDCP_2_2_HDMI_REG_RD_MSG_OFFSET, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @intel_hdmi_hdcp_read(%struct.intel_digital_port* %42, i32 %43, i8* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %35, %28
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @intel_hdmi_hdcp2_wait_for_msg(%struct.intel_digital_port*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @intel_hdmi_hdcp_read(%struct.intel_digital_port*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
