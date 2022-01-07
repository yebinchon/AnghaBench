; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_set_clock_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_set_clock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_set_clock_state = type { i32, i32, i32, i32 }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_SET_CLOCK_STATE = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i32, i32, i32)* @ti_sci_set_clock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_set_clock_state(%struct.ti_sci_handle* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_sci_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ti_sci_info*, align 8
  %13 = alloca %struct.ti_sci_msg_req_set_clock_state*, align 8
  %14 = alloca %struct.ti_sci_msg_hdr*, align 8
  %15 = alloca %struct.ti_sci_xfer*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
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
  br label %108

26:                                               ; preds = %5
  %27 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %28 = icmp ne %struct.ti_sci_handle* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %108

32:                                               ; preds = %26
  %33 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %34 = bitcast %struct.ti_sci_handle* %33 to %struct.ti_sci_xfer*
  %35 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %34)
  store %struct.ti_sci_info* %35, %struct.ti_sci_info** %12, align 8
  %36 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %37 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %36, i32 0, i32 1
  %38 = load %struct.device*, %struct.device** %37, align 8
  store %struct.device* %38, %struct.device** %16, align 8
  %39 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %40 = load i32, i32* @TI_SCI_MSG_SET_CLOCK_STATE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %39, i32 %40, i32 %43, i32 16, i32 4)
  store %struct.ti_sci_xfer* %44, %struct.ti_sci_xfer** %15, align 8
  %45 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %46 = call i64 @IS_ERR(%struct.ti_sci_xfer* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %32
  %49 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %50 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %49)
  store i32 %50, i32* %17, align 4
  %51 = load %struct.device*, %struct.device** %16, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %6, align 4
  br label %108

55:                                               ; preds = %32
  %56 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %57 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ti_sci_msg_req_set_clock_state*
  store %struct.ti_sci_msg_req_set_clock_state* %59, %struct.ti_sci_msg_req_set_clock_state** %13, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ti_sci_msg_req_set_clock_state*, %struct.ti_sci_msg_req_set_clock_state** %13, align 8
  %62 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_state, %struct.ti_sci_msg_req_set_clock_state* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 255
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.ti_sci_msg_req_set_clock_state*, %struct.ti_sci_msg_req_set_clock_state** %13, align 8
  %68 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_state, %struct.ti_sci_msg_req_set_clock_state* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %75

69:                                               ; preds = %55
  %70 = load %struct.ti_sci_msg_req_set_clock_state*, %struct.ti_sci_msg_req_set_clock_state** %13, align 8
  %71 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_state, %struct.ti_sci_msg_req_set_clock_state* %70, i32 0, i32 1
  store i32 255, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.ti_sci_msg_req_set_clock_state*, %struct.ti_sci_msg_req_set_clock_state** %13, align 8
  %74 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_state, %struct.ti_sci_msg_req_set_clock_state* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %65
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.ti_sci_msg_req_set_clock_state*, %struct.ti_sci_msg_req_set_clock_state** %13, align 8
  %78 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_state, %struct.ti_sci_msg_req_set_clock_state* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %80 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %81 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %79, %struct.ti_sci_xfer* %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load %struct.device*, %struct.device** %16, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %102

88:                                               ; preds = %75
  %89 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %90 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %92, %struct.ti_sci_msg_hdr** %14, align 8
  %93 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %14, align 8
  %94 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  br label %100

100:                                              ; preds = %97, %96
  %101 = phi i32 [ 0, %96 ], [ %99, %97 ]
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %100, %84
  %103 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %104 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %103, i32 0, i32 0
  %105 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %15, align 8
  %106 = call i32 @ti_sci_put_one_xfer(i32* %104, %struct.ti_sci_xfer* %105)
  %107 = load i32, i32* %17, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %102, %48, %29, %22
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
