; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_get_clock_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_get_clock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_get_clock_state = type { i32, i32, i32 }
%struct.ti_sci_msg_resp_get_clock_state = type { i32, i32 }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_GET_CLOCK_STATE = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i32, i32*, i32*)* @ti_sci_cmd_get_clock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_get_clock_state(%struct.ti_sci_handle* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_sci_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ti_sci_info*, align 8
  %13 = alloca %struct.ti_sci_msg_req_get_clock_state*, align 8
  %14 = alloca %struct.ti_sci_msg_resp_get_clock_state*, align 8
  %15 = alloca %struct.ti_sci_xfer*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %19 = bitcast %struct.ti_sci_handle* %18 to %struct.ti_sci_xfer*
  %20 = call i64 @IS_ERR(%struct.ti_sci_xfer* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %24 = bitcast %struct.ti_sci_handle* %23 to %struct.ti_sci_xfer*
  %25 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %24)
  store i32 %25, i32* %6, align 4
  br label %126

26:                                               ; preds = %5
  %27 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %28 = icmp ne %struct.ti_sci_handle* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %126

32:                                               ; preds = %26
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %126

41:                                               ; preds = %35, %32
  %42 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %43 = bitcast %struct.ti_sci_handle* %42 to %struct.ti_sci_xfer*
  %44 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %43)
  store %struct.ti_sci_info* %44, %struct.ti_sci_info** %12, align 8
  %45 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %46 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %45, i32 0, i32 1
  %47 = load %struct.device*, %struct.device** %46, align 8
  store %struct.device* %47, %struct.device** %16, align 8
  %48 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %49 = load i32, i32* @TI_SCI_MSG_GET_CLOCK_STATE, align 4
  %50 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %51 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %48, i32 %49, i32 %50, i32 12, i32 8)
  store %struct.ti_sci_xfer* %51, %struct.ti_sci_xfer** %15, align 8
  %52 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %53 = call i64 @IS_ERR(%struct.ti_sci_xfer* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %57 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %56)
  store i32 %57, i32* %17, align 4
  %58 = load %struct.device*, %struct.device** %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %6, align 4
  br label %126

62:                                               ; preds = %41
  %63 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %64 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.ti_sci_msg_req_get_clock_state*
  store %struct.ti_sci_msg_req_get_clock_state* %66, %struct.ti_sci_msg_req_get_clock_state** %13, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ti_sci_msg_req_get_clock_state*, %struct.ti_sci_msg_req_get_clock_state** %13, align 8
  %69 = getelementptr inbounds %struct.ti_sci_msg_req_get_clock_state, %struct.ti_sci_msg_req_get_clock_state* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 255
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.ti_sci_msg_req_get_clock_state*, %struct.ti_sci_msg_req_get_clock_state** %13, align 8
  %75 = getelementptr inbounds %struct.ti_sci_msg_req_get_clock_state, %struct.ti_sci_msg_req_get_clock_state* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %82

76:                                               ; preds = %62
  %77 = load %struct.ti_sci_msg_req_get_clock_state*, %struct.ti_sci_msg_req_get_clock_state** %13, align 8
  %78 = getelementptr inbounds %struct.ti_sci_msg_req_get_clock_state, %struct.ti_sci_msg_req_get_clock_state* %77, i32 0, i32 1
  store i32 255, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.ti_sci_msg_req_get_clock_state*, %struct.ti_sci_msg_req_get_clock_state** %13, align 8
  %81 = getelementptr inbounds %struct.ti_sci_msg_req_get_clock_state, %struct.ti_sci_msg_req_get_clock_state* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %72
  %83 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %84 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %85 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %83, %struct.ti_sci_xfer* %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.device*, %struct.device** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %120

92:                                               ; preds = %82
  %93 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %94 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.ti_sci_msg_resp_get_clock_state*
  store %struct.ti_sci_msg_resp_get_clock_state* %96, %struct.ti_sci_msg_resp_get_clock_state** %14, align 8
  %97 = load %struct.ti_sci_msg_resp_get_clock_state*, %struct.ti_sci_msg_resp_get_clock_state** %14, align 8
  %98 = call i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_get_clock_state* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %17, align 4
  br label %120

103:                                              ; preds = %92
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.ti_sci_msg_resp_get_clock_state*, %struct.ti_sci_msg_resp_get_clock_state** %14, align 8
  %108 = getelementptr inbounds %struct.ti_sci_msg_resp_get_clock_state, %struct.ti_sci_msg_resp_get_clock_state* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32*, i32** %11, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.ti_sci_msg_resp_get_clock_state*, %struct.ti_sci_msg_resp_get_clock_state** %14, align 8
  %116 = getelementptr inbounds %struct.ti_sci_msg_resp_get_clock_state, %struct.ti_sci_msg_resp_get_clock_state* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %111
  br label %120

120:                                              ; preds = %119, %100, %88
  %121 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %122 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %121, i32 0, i32 0
  %123 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %124 = call i32 @ti_sci_put_one_xfer(i32* %122, %struct.ti_sci_xfer* %123)
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %120, %55, %38, %29, %22
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_get_clock_state*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
