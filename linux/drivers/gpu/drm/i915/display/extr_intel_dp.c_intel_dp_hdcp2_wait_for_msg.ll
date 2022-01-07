; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_wait_for_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_wait_for_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.intel_dp }
%struct.intel_dp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { i32 }
%struct.hdcp2_dp_msg_data = type { i64, i32, i32, i32 }

@HDCP_2_2_AKE_SEND_HPRIME = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"msg_id %d, ret %d, timeout(mSec): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, %struct.hdcp2_dp_msg_data*)* @intel_dp_hdcp2_wait_for_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp2_wait_for_msg(%struct.intel_digital_port* %0, %struct.hdcp2_dp_msg_data* %1) #0 {
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.hdcp2_dp_msg_data*, align 8
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca %struct.intel_hdcp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  store %struct.hdcp2_dp_msg_data* %1, %struct.hdcp2_dp_msg_data** %4, align 8
  %11 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %12 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %11, i32 0, i32 0
  store %struct.intel_dp* %12, %struct.intel_dp** %5, align 8
  %13 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %14 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.intel_hdcp* %16, %struct.intel_hdcp** %6, align 8
  %17 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %4, align 8
  %18 = getelementptr inbounds %struct.hdcp2_dp_msg_data, %struct.hdcp2_dp_msg_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @HDCP_2_2_AKE_SEND_HPRIME, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %25 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %4, align 8
  %30 = getelementptr inbounds %struct.hdcp2_dp_msg_data, %struct.hdcp2_dp_msg_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  br label %36

32:                                               ; preds = %23, %2
  %33 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %4, align 8
  %34 = getelementptr inbounds %struct.hdcp2_dp_msg_data, %struct.hdcp2_dp_msg_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %4, align 8
  %38 = getelementptr inbounds %struct.hdcp2_dp_msg_data, %struct.hdcp2_dp_msg_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mdelay(i32 %42)
  store i32 0, i32* %8, align 4
  br label %57

44:                                               ; preds = %36
  %45 = load %struct.intel_hdcp*, %struct.intel_hdcp** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @intel_dp_hdcp_wait_for_cp_irq(%struct.intel_hdcp* %45, i32 %46)
  %48 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @hdcp2_detect_msg_availability(%struct.intel_digital_port* %48, i64 %49, i32* %10)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %44
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %4, align 8
  %62 = getelementptr inbounds %struct.hdcp2_dp_msg_data, %struct.hdcp2_dp_msg_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @intel_dp_hdcp_wait_for_cp_irq(%struct.intel_hdcp*, i32) #1

declare dso_local i32 @hdcp2_detect_msg_availability(%struct.intel_digital_port*, i64, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
