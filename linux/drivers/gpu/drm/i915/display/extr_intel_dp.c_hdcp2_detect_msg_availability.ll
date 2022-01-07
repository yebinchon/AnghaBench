; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_hdcp2_detect_msg_availability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_hdcp2_detect_msg_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unidentified msg_id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32, i32*)* @hdcp2_detect_msg_availability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcp2_detect_msg_availability(%struct.intel_digital_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %12 = call i32 @intel_dp_hdcp2_read_rx_status(%struct.intel_digital_port* %11, i32* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %40 [
    i32 130, label %19
    i32 129, label %26
    i32 128, label %33
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @HDCP_2_2_DP_RXSTATUS_H_PRIME(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %19
  br label %45

26:                                               ; preds = %17
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @HDCP_2_2_DP_RXSTATUS_PAIRING(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %26
  br label %45

33:                                               ; preds = %17
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @HDCP_2_2_DP_RXSTATUS_READY(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %33
  br label %45

40:                                               ; preds = %17
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %39, %32, %25
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %40, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @intel_dp_hdcp2_read_rx_status(%struct.intel_digital_port*, i32*) #1

declare dso_local i32 @HDCP_2_2_DP_RXSTATUS_H_PRIME(i32) #1

declare dso_local i32 @HDCP_2_2_DP_RXSTATUS_PAIRING(i32) #1

declare dso_local i32 @HDCP_2_2_DP_RXSTATUS_READY(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
