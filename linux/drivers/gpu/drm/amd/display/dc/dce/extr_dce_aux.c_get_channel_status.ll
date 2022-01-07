; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_get_channel_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_get_channel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { i32 }
%struct.aux_engine_dce110 = type { i32 }

@AUX_CHANNEL_OPERATION_FAILED_REASON_UNKNOWN = common dso_local global i32 0, align 4
@AUX_SW_STATUS = common dso_local global i32 0, align 4
@AUX_SW_DONE = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_HPD_DISCON_MASK = common dso_local global i32 0, align 4
@AUX_CHANNEL_OPERATION_FAILED_HPD_DISCON = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_DONE_MASK = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_STATE_MASK = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_MASK = common dso_local global i32 0, align 4
@AUX_CHANNEL_OPERATION_FAILED_TIMEOUT = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_RX_INVALID_STOP_MASK = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_RX_RECV_NO_DET_MASK = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_H_MASK = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_L_MASK = common dso_local global i32 0, align 4
@AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY = common dso_local global i32 0, align 4
@AUX_SW_REPLY_BYTE_COUNT = common dso_local global i32 0, align 4
@AUX_CHANNEL_OPERATION_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_aux*, i64*)* @get_channel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_channel_status(%struct.dce_aux* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce_aux*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.aux_engine_dce110*, align 8
  %7 = alloca i32, align 4
  store %struct.dce_aux* %0, %struct.dce_aux** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.dce_aux*, %struct.dce_aux** %4, align 8
  %9 = call %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux* %8)
  store %struct.aux_engine_dce110* %9, %struct.aux_engine_dce110** %6, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @ASSERT_CRITICAL(i32 0)
  %14 = load i32, i32* @AUX_CHANNEL_OPERATION_FAILED_REASON_UNKNOWN, align 4
  store i32 %14, i32* %3, align 4
  br label %91

15:                                               ; preds = %2
  %16 = load i64*, i64** %5, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @AUX_SW_STATUS, align 4
  %18 = load i32, i32* @AUX_SW_DONE, align 4
  %19 = load %struct.aux_engine_dce110*, %struct.aux_engine_dce110** %6, align 8
  %20 = getelementptr inbounds %struct.aux_engine_dce110, %struct.aux_engine_dce110* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 10
  %23 = call i32 @REG_WAIT(i32 %17, i32 %18, i32 1, i32 10, i32 %22)
  %24 = load i32, i32* @AUX_SW_STATUS, align 4
  %25 = call i32 @REG_READ(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AUX_SW_STATUS__AUX_SW_HPD_DISCON_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* @AUX_CHANNEL_OPERATION_FAILED_HPD_DISCON, align 4
  store i32 %31, i32* %3, align 4
  br label %91

32:                                               ; preds = %15
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AUX_SW_STATUS__AUX_SW_DONE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_STATE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @AUX_SW_STATUS__AUX_SW_RX_TIMEOUT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @AUX_CHANNEL_OPERATION_FAILED_TIMEOUT, align 4
  store i32 %48, i32* %3, align 4
  br label %91

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AUX_SW_STATUS__AUX_SW_RX_INVALID_STOP_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @AUX_SW_STATUS__AUX_SW_RX_RECV_NO_DET_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_H_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @AUX_SW_STATUS__AUX_SW_RX_RECV_INVALID_L_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64, %59, %54, %49
  %70 = load i32, i32* @AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY, align 4
  store i32 %70, i32* %3, align 4
  br label %91

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @AUX_SW_STATUS, align 4
  %75 = load i32, i32* @AUX_SW_REPLY_BYTE_COUNT, align 4
  %76 = call i64 @get_reg_field_value(i32 %73, i32 %74, i32 %75)
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i64*, i64** %5, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* @AUX_CHANNEL_OPERATION_FAILED_INVALID_REPLY, align 4
  store i32 %82, i32* %3, align 4
  br label %91

83:                                               ; preds = %72
  %84 = load i64*, i64** %5, align 8
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* @AUX_CHANNEL_OPERATION_SUCCEEDED, align 4
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %32
  %89 = call i32 @ASSERT_CRITICAL(i32 0)
  %90 = load i32, i32* @AUX_CHANNEL_OPERATION_FAILED_TIMEOUT, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %83, %81, %69, %47, %30, %12
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux*) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i64 @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
