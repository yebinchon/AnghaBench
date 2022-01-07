; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_read_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_read_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hdcp2_dp_msg_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HDCP_2_2_REP_SEND_RECVID_LIST = common dso_local global i64 0, align 8
@DP_AUX_MAX_PAYLOAD_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"msg_id %d, ret %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i64, i8*, i64)* @intel_dp_hdcp2_read_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp2_read_msg(%struct.intel_digital_port* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hdcp2_dp_msg_data*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.hdcp2_dp_msg_data* @get_hdcp2_dp_msg_data(i64 %18)
  store %struct.hdcp2_dp_msg_data* %19, %struct.hdcp2_dp_msg_data** %15, align 8
  %20 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %15, align 8
  %21 = icmp ne %struct.hdcp2_dp_msg_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %102

25:                                               ; preds = %4
  %26 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %15, align 8
  %27 = getelementptr inbounds %struct.hdcp2_dp_msg_data, %struct.hdcp2_dp_msg_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %30 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %15, align 8
  %31 = call i32 @intel_dp_hdcp2_wait_for_msg(%struct.intel_digital_port* %29, %struct.hdcp2_dp_msg_data* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %102

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @HDCP_2_2_REP_SEND_RECVID_LIST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %42 = call i32 @get_receiver_id_list_size(%struct.intel_digital_port* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %102

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, 1
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i64*, i64** %11, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %11, align 8
  br label %56

56:                                               ; preds = %84, %50
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @DP_AUX_MAX_PAYLOAD_BYTES, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @DP_AUX_MAX_PAYLOAD_BYTES, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %14, align 4
  %69 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %70 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = load i64*, i64** %11, align 8
  %74 = bitcast i64* %73 to i8*
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @drm_dp_dpcd_read(i32* %71, i32 %72, i8* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %80, i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %102

84:                                               ; preds = %67
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i64*, i64** %11, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64* %91, i64** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %56

95:                                               ; preds = %56
  %96 = load i8*, i8** %8, align 8
  %97 = bitcast i8* %96 to i64*
  store i64* %97, i64** %11, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64*, i64** %11, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i64, i64* %9, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %95, %79, %45, %34, %22
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.hdcp2_dp_msg_data* @get_hdcp2_dp_msg_data(i64) #1

declare dso_local i32 @intel_dp_hdcp2_wait_for_msg(%struct.intel_digital_port*, %struct.hdcp2_dp_msg_data*) #1

declare dso_local i32 @get_receiver_id_list_size(%struct.intel_digital_port*) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
