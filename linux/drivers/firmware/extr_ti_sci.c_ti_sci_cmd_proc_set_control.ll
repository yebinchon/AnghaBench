; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_proc_set_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_proc_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ti_sci_msg_req_set_ctrl = type { i8*, i8*, i32 }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_xfer = type { %struct.TYPE_2__, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_SET_CTRL = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i8*, i8*)* @ti_sci_cmd_proc_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_proc_set_control(%struct.ti_sci_handle* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_sci_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ti_sci_msg_req_set_ctrl*, align 8
  %11 = alloca %struct.ti_sci_msg_hdr*, align 8
  %12 = alloca %struct.ti_sci_info*, align 8
  %13 = alloca %struct.ti_sci_xfer*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %17 = icmp ne %struct.ti_sci_handle* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %95

21:                                               ; preds = %4
  %22 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %23 = bitcast %struct.ti_sci_handle* %22 to %struct.ti_sci_xfer*
  %24 = call i64 @IS_ERR(%struct.ti_sci_xfer* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %28 = bitcast %struct.ti_sci_handle* %27 to %struct.ti_sci_xfer*
  %29 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %28)
  store i32 %29, i32* %5, align 4
  br label %95

30:                                               ; preds = %21
  %31 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %32 = bitcast %struct.ti_sci_handle* %31 to %struct.ti_sci_xfer*
  %33 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %32)
  store %struct.ti_sci_info* %33, %struct.ti_sci_info** %12, align 8
  %34 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %35 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %34, i32 0, i32 1
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %14, align 8
  %37 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %38 = load i32, i32* @TI_SCI_MSG_SET_CTRL, align 4
  %39 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %40 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %37, i32 %38, i32 %39, i32 24, i32 4)
  store %struct.ti_sci_xfer* %40, %struct.ti_sci_xfer** %13, align 8
  %41 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %42 = call i64 @IS_ERR(%struct.ti_sci_xfer* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %30
  %45 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %46 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.device*, %struct.device** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %5, align 4
  br label %95

51:                                               ; preds = %30
  %52 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %53 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.ti_sci_msg_req_set_ctrl*
  store %struct.ti_sci_msg_req_set_ctrl* %55, %struct.ti_sci_msg_req_set_ctrl** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ti_sci_msg_req_set_ctrl*, %struct.ti_sci_msg_req_set_ctrl** %10, align 8
  %58 = getelementptr inbounds %struct.ti_sci_msg_req_set_ctrl, %struct.ti_sci_msg_req_set_ctrl* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.ti_sci_msg_req_set_ctrl*, %struct.ti_sci_msg_req_set_ctrl** %10, align 8
  %61 = getelementptr inbounds %struct.ti_sci_msg_req_set_ctrl, %struct.ti_sci_msg_req_set_ctrl* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.ti_sci_msg_req_set_ctrl*, %struct.ti_sci_msg_req_set_ctrl** %10, align 8
  %64 = getelementptr inbounds %struct.ti_sci_msg_req_set_ctrl, %struct.ti_sci_msg_req_set_ctrl* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %66 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %67 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %65, %struct.ti_sci_xfer* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load %struct.device*, %struct.device** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %89

74:                                               ; preds = %51
  %75 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %76 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %79, %struct.ti_sci_msg_hdr** %11, align 8
  %80 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %11, align 8
  %81 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %87

84:                                               ; preds = %74
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  br label %87

87:                                               ; preds = %84, %83
  %88 = phi i32 [ 0, %83 ], [ %86, %84 ]
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %87, %70
  %90 = load %struct.ti_sci_info*, %struct.ti_sci_info** %12, align 8
  %91 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %90, i32 0, i32 0
  %92 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %93 = call i32 @ti_sci_put_one_xfer(i32* %91, %struct.ti_sci_xfer* %92)
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %89, %44, %26, %18
  %96 = load i32, i32* %5, align 4
  ret i32 %96
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
