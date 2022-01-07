; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_set_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_set_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_set_device_state = type { i32, i32 }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_SET_DEVICE_STATE = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i32, i32)* @ti_sci_set_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_set_device_state(%struct.ti_sci_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_sci_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ti_sci_info*, align 8
  %11 = alloca %struct.ti_sci_msg_req_set_device_state*, align 8
  %12 = alloca %struct.ti_sci_msg_hdr*, align 8
  %13 = alloca %struct.ti_sci_xfer*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %17 = bitcast %struct.ti_sci_handle* %16 to %struct.ti_sci_xfer*
  %18 = call i64 @IS_ERR(%struct.ti_sci_xfer* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %22 = bitcast %struct.ti_sci_handle* %21 to %struct.ti_sci_xfer*
  %23 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %22)
  store i32 %23, i32* %5, align 4
  br label %93

24:                                               ; preds = %4
  %25 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %26 = icmp ne %struct.ti_sci_handle* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %93

30:                                               ; preds = %24
  %31 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %32 = bitcast %struct.ti_sci_handle* %31 to %struct.ti_sci_xfer*
  %33 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %32)
  store %struct.ti_sci_info* %33, %struct.ti_sci_info** %10, align 8
  %34 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %35 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %34, i32 0, i32 1
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %14, align 8
  %37 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %38 = load i32, i32* @TI_SCI_MSG_SET_DEVICE_STATE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %37, i32 %38, i32 %41, i32 8, i32 4)
  store %struct.ti_sci_xfer* %42, %struct.ti_sci_xfer** %13, align 8
  %43 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %44 = call i64 @IS_ERR(%struct.ti_sci_xfer* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %30
  %47 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %48 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.device*, %struct.device** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %5, align 4
  br label %93

53:                                               ; preds = %30
  %54 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %55 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.ti_sci_msg_req_set_device_state*
  store %struct.ti_sci_msg_req_set_device_state* %57, %struct.ti_sci_msg_req_set_device_state** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ti_sci_msg_req_set_device_state*, %struct.ti_sci_msg_req_set_device_state** %11, align 8
  %60 = getelementptr inbounds %struct.ti_sci_msg_req_set_device_state, %struct.ti_sci_msg_req_set_device_state* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ti_sci_msg_req_set_device_state*, %struct.ti_sci_msg_req_set_device_state** %11, align 8
  %63 = getelementptr inbounds %struct.ti_sci_msg_req_set_device_state, %struct.ti_sci_msg_req_set_device_state* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %65 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %66 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %64, %struct.ti_sci_xfer* %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load %struct.device*, %struct.device** %14, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %87

73:                                               ; preds = %53
  %74 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %75 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %77, %struct.ti_sci_msg_hdr** %12, align 8
  %78 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %12, align 8
  %79 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  br label %85

85:                                               ; preds = %82, %81
  %86 = phi i32 [ 0, %81 ], [ %84, %82 ]
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %85, %69
  %88 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %89 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %88, i32 0, i32 0
  %90 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %91 = call i32 @ti_sci_put_one_xfer(i32* %89, %struct.ti_sci_xfer* %90)
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %46, %27, %20
  %94 = load i32, i32* %5, align 4
  ret i32 %94
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
