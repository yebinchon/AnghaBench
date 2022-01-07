; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_set_device_resets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_set_device_resets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_set_device_resets = type { i8*, i8* }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_SET_DEVICE_RESETS = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i8*, i8*)* @ti_sci_cmd_set_device_resets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_set_device_resets(%struct.ti_sci_handle* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_sci_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ti_sci_info*, align 8
  %9 = alloca %struct.ti_sci_msg_req_set_device_resets*, align 8
  %10 = alloca %struct.ti_sci_msg_hdr*, align 8
  %11 = alloca %struct.ti_sci_xfer*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %5, align 8
  %15 = bitcast %struct.ti_sci_handle* %14 to %struct.ti_sci_xfer*
  %16 = call i64 @IS_ERR(%struct.ti_sci_xfer* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %5, align 8
  %20 = bitcast %struct.ti_sci_handle* %19 to %struct.ti_sci_xfer*
  %21 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %20)
  store i32 %21, i32* %4, align 4
  br label %89

22:                                               ; preds = %3
  %23 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %5, align 8
  %24 = icmp ne %struct.ti_sci_handle* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %89

28:                                               ; preds = %22
  %29 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %5, align 8
  %30 = bitcast %struct.ti_sci_handle* %29 to %struct.ti_sci_xfer*
  %31 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %30)
  store %struct.ti_sci_info* %31, %struct.ti_sci_info** %8, align 8
  %32 = load %struct.ti_sci_info*, %struct.ti_sci_info** %8, align 8
  %33 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %32, i32 0, i32 1
  %34 = load %struct.device*, %struct.device** %33, align 8
  store %struct.device* %34, %struct.device** %12, align 8
  %35 = load %struct.ti_sci_info*, %struct.ti_sci_info** %8, align 8
  %36 = load i32, i32* @TI_SCI_MSG_SET_DEVICE_RESETS, align 4
  %37 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %38 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %35, i32 %36, i32 %37, i32 16, i32 4)
  store %struct.ti_sci_xfer* %38, %struct.ti_sci_xfer** %11, align 8
  %39 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %11, align 8
  %40 = call i64 @IS_ERR(%struct.ti_sci_xfer* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %11, align 8
  %44 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.device*, %struct.device** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %4, align 4
  br label %89

49:                                               ; preds = %28
  %50 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %11, align 8
  %51 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.ti_sci_msg_req_set_device_resets*
  store %struct.ti_sci_msg_req_set_device_resets* %53, %struct.ti_sci_msg_req_set_device_resets** %9, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.ti_sci_msg_req_set_device_resets*, %struct.ti_sci_msg_req_set_device_resets** %9, align 8
  %56 = getelementptr inbounds %struct.ti_sci_msg_req_set_device_resets, %struct.ti_sci_msg_req_set_device_resets* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.ti_sci_msg_req_set_device_resets*, %struct.ti_sci_msg_req_set_device_resets** %9, align 8
  %59 = getelementptr inbounds %struct.ti_sci_msg_req_set_device_resets, %struct.ti_sci_msg_req_set_device_resets* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ti_sci_info*, %struct.ti_sci_info** %8, align 8
  %61 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %11, align 8
  %62 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %60, %struct.ti_sci_xfer* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load %struct.device*, %struct.device** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %83

69:                                               ; preds = %49
  %70 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %11, align 8
  %71 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %73, %struct.ti_sci_msg_hdr** %10, align 8
  %74 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %10, align 8
  %75 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  br label %81

81:                                               ; preds = %78, %77
  %82 = phi i32 [ 0, %77 ], [ %80, %78 ]
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %65
  %84 = load %struct.ti_sci_info*, %struct.ti_sci_info** %8, align 8
  %85 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %84, i32 0, i32 0
  %86 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %11, align 8
  %87 = call i32 @ti_sci_put_one_xfer(i32* %85, %struct.ti_sci_xfer* %86)
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %83, %42, %25, %18
  %90 = load i32, i32* %4, align 4
  ret i32 %90
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
