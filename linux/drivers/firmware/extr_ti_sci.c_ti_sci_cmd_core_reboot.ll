; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_core_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_core_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_reboot = type { i32 }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_SYS_RESET = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*)* @ti_sci_cmd_core_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_core_reboot(%struct.ti_sci_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_sci_handle*, align 8
  %4 = alloca %struct.ti_sci_info*, align 8
  %5 = alloca %struct.ti_sci_msg_req_reboot*, align 8
  %6 = alloca %struct.ti_sci_msg_hdr*, align 8
  %7 = alloca %struct.ti_sci_xfer*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %11 = bitcast %struct.ti_sci_handle* %10 to %struct.ti_sci_xfer*
  %12 = call i64 @IS_ERR(%struct.ti_sci_xfer* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %16 = bitcast %struct.ti_sci_handle* %15 to %struct.ti_sci_xfer*
  %17 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %16)
  store i32 %17, i32* %2, align 4
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %20 = icmp ne %struct.ti_sci_handle* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %18
  %25 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %26 = bitcast %struct.ti_sci_handle* %25 to %struct.ti_sci_xfer*
  %27 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %26)
  store %struct.ti_sci_info* %27, %struct.ti_sci_info** %4, align 8
  %28 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %29 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %28, i32 0, i32 1
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %8, align 8
  %31 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %32 = load i32, i32* @TI_SCI_MSG_SYS_RESET, align 4
  %33 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %34 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %31, i32 %32, i32 %33, i32 4, i32 4)
  store %struct.ti_sci_xfer* %34, %struct.ti_sci_xfer** %7, align 8
  %35 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %7, align 8
  %36 = call i64 @IS_ERR(%struct.ti_sci_xfer* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %24
  %39 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %7, align 8
  %40 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %78

45:                                               ; preds = %24
  %46 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %7, align 8
  %47 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ti_sci_msg_req_reboot*
  store %struct.ti_sci_msg_req_reboot* %49, %struct.ti_sci_msg_req_reboot** %5, align 8
  %50 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %51 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %7, align 8
  %52 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %50, %struct.ti_sci_xfer* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %72

59:                                               ; preds = %45
  %60 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %7, align 8
  %61 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %63, %struct.ti_sci_msg_hdr** %6, align 8
  %64 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %6, align 8
  %65 = call i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %71

70:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %67
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %74 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %73, i32 0, i32 0
  %75 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %7, align 8
  %76 = call i32 @ti_sci_put_one_xfer(i32* %74, %struct.ti_sci_xfer* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %38, %21, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
