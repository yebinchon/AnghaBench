; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32 }

@HDCP_REAUTH_REQUEST = common dso_local global i32 0, align 4
@HDCP_LINK_INTEGRITY_FAILURE = common dso_local global i32 0, align 4
@HDCP_TOPOLOGY_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*)* @intel_dp_hdcp2_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp2_check_link(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %6 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %7 = call i32 @intel_dp_hdcp2_read_rx_status(%struct.intel_digital_port* %6, i32* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @HDCP_2_2_DP_RXSTATUS_REAUTH_REQ(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @HDCP_REAUTH_REQUEST, align 4
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @HDCP_2_2_DP_RXSTATUS_LINK_FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @HDCP_LINK_INTEGRITY_FAILURE, align 4
  store i32 %23, i32* %5, align 4
  br label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @HDCP_2_2_DP_RXSTATUS_READY(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @HDCP_TOPOLOGY_CHANGE, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @intel_dp_hdcp2_read_rx_status(%struct.intel_digital_port*, i32*) #1

declare dso_local i64 @HDCP_2_2_DP_RXSTATUS_REAUTH_REQ(i32) #1

declare dso_local i64 @HDCP_2_2_DP_RXSTATUS_LINK_FAILED(i32) #1

declare dso_local i64 @HDCP_2_2_DP_RXSTATUS_READY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
