; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hdcp2_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.intel_dp }
%struct.intel_dp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_hdcp }
%struct.intel_hdcp = type { i32, i32 }
%struct.hdcp2_dp_msg_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DP_AUX_MAX_PAYLOAD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i8*, i64)* @intel_dp_hdcp2_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_hdcp2_write_msg(%struct.intel_digital_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_dp*, align 8
  %9 = alloca %struct.intel_hdcp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hdcp2_dp_msg_data*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 0
  store %struct.intel_dp* %17, %struct.intel_dp** %8, align 8
  %18 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %19 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.intel_hdcp* %21, %struct.intel_hdcp** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.hdcp2_dp_msg_data* @get_hdcp2_dp_msg_data(i32 %25)
  store %struct.hdcp2_dp_msg_data* %26, %struct.hdcp2_dp_msg_data** %15, align 8
  %27 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %15, align 8
  %28 = icmp ne %struct.hdcp2_dp_msg_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %85

32:                                               ; preds = %3
  %33 = load %struct.hdcp2_dp_msg_data*, %struct.hdcp2_dp_msg_data** %15, align 8
  %34 = getelementptr inbounds %struct.hdcp2_dp_msg_data, %struct.hdcp2_dp_msg_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %36, 1
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  %41 = load %struct.intel_hdcp*, %struct.intel_hdcp** %9, align 8
  %42 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %41, i32 0, i32 0
  %43 = call i32 @atomic_read(i32* %42)
  %44 = load %struct.intel_hdcp*, %struct.intel_hdcp** %9, align 8
  %45 = getelementptr inbounds %struct.intel_hdcp, %struct.intel_hdcp* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %71, %32
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @DP_AUX_MAX_PAYLOAD_BYTES, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @DP_AUX_MAX_PAYLOAD_BYTES, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %14, align 4
  %59 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %60 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %60, i32 0, i32 0
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @drm_dp_dpcd_write(i32* %61, i32 %62, i8* %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %4, align 4
  br label %85

71:                                               ; preds = %57
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %46

82:                                               ; preds = %46
  %83 = load i64, i64* %7, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %69, %29
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.hdcp2_dp_msg_data* @get_hdcp2_dp_msg_data(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @drm_dp_dpcd_write(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
