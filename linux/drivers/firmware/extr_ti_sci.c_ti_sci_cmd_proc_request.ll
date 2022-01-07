; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_proc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_proc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ti_sci_msg_req_proc_request = type { i32 }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_xfer = type { %struct.TYPE_2__, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_PROC_REQUEST = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32)* @ti_sci_cmd_proc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_proc_request(%struct.ti_sci_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_sci_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_sci_msg_req_proc_request*, align 8
  %7 = alloca %struct.ti_sci_msg_hdr*, align 8
  %8 = alloca %struct.ti_sci_info*, align 8
  %9 = alloca %struct.ti_sci_xfer*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %13 = icmp ne %struct.ti_sci_handle* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %19 = bitcast %struct.ti_sci_handle* %18 to %struct.ti_sci_xfer*
  %20 = call i64 @IS_ERR(%struct.ti_sci_xfer* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %24 = bitcast %struct.ti_sci_handle* %23 to %struct.ti_sci_xfer*
  %25 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %24)
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %17
  %27 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %28 = bitcast %struct.ti_sci_handle* %27 to %struct.ti_sci_xfer*
  %29 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %28)
  store %struct.ti_sci_info* %29, %struct.ti_sci_info** %8, align 8
  %30 = load %struct.ti_sci_info*, %struct.ti_sci_info** %8, align 8
  %31 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %30, i32 0, i32 1
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %10, align 8
  %33 = load %struct.ti_sci_info*, %struct.ti_sci_info** %8, align 8
  %34 = load i32, i32* @TI_SCI_MSG_PROC_REQUEST, align 4
  %35 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %36 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %33, i32 %34, i32 %35, i32 4, i32 4)
  store %struct.ti_sci_xfer* %36, %struct.ti_sci_xfer** %9, align 8
  %37 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %9, align 8
  %38 = call i64 @IS_ERR(%struct.ti_sci_xfer* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %9, align 8
  %42 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %85

47:                                               ; preds = %26
  %48 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %9, align 8
  %49 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.ti_sci_msg_req_proc_request*
  store %struct.ti_sci_msg_req_proc_request* %51, %struct.ti_sci_msg_req_proc_request** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ti_sci_msg_req_proc_request*, %struct.ti_sci_msg_req_proc_request** %6, align 8
  %54 = getelementptr inbounds %struct.ti_sci_msg_req_proc_request, %struct.ti_sci_msg_req_proc_request* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ti_sci_info*, %struct.ti_sci_info** %8, align 8
  %56 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %9, align 8
  %57 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %55, %struct.ti_sci_xfer* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load %struct.device*, %struct.device** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %79

64:                                               ; preds = %47
  %65 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %9, align 8
  %66 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %69, %struct.ti_sci_msg_hdr** %7, align 8
  %70 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %7, align 8
  %71 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %77

74:                                               ; preds = %64
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i32 [ 0, %73 ], [ %76, %74 ]
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %60
  %80 = load %struct.ti_sci_info*, %struct.ti_sci_info** %8, align 8
  %81 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %80, i32 0, i32 0
  %82 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %9, align 8
  %83 = call i32 @ti_sci_put_one_xfer(i32* %81, %struct.ti_sci_xfer* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %40, %22, %14
  %86 = load i32, i32* %3, align 4
  ret i32 %86
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
