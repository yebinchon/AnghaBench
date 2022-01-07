; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_proc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_proc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ti_sci_msg_resp_get_status = type { i32, i32, i32, i32, i64 }
%struct.ti_sci_msg_req_get_status = type { i32 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_xfer = type { %struct.TYPE_2__, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_GET_STATUS = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TI_SCI_ADDR_LOW_MASK = common dso_local global i32 0, align 4
@TI_SCI_ADDR_HIGH_SHIFT = common dso_local global i32 0, align 4
@TI_SCI_ADDR_HIGH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i32*, i32*, i32*, i32*)* @ti_sci_cmd_proc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_proc_get_status(%struct.ti_sci_handle* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_sci_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ti_sci_msg_resp_get_status*, align 8
  %15 = alloca %struct.ti_sci_msg_req_get_status*, align 8
  %16 = alloca %struct.ti_sci_info*, align 8
  %17 = alloca %struct.ti_sci_xfer*, align 8
  %18 = alloca %struct.device*, align 8
  %19 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %8, align 8
  %21 = icmp ne %struct.ti_sci_handle* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %119

25:                                               ; preds = %6
  %26 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %8, align 8
  %27 = bitcast %struct.ti_sci_handle* %26 to %struct.ti_sci_xfer*
  %28 = call i64 @IS_ERR(%struct.ti_sci_xfer* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %8, align 8
  %32 = bitcast %struct.ti_sci_handle* %31 to %struct.ti_sci_xfer*
  %33 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %32)
  store i32 %33, i32* %7, align 4
  br label %119

34:                                               ; preds = %25
  %35 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %8, align 8
  %36 = bitcast %struct.ti_sci_handle* %35 to %struct.ti_sci_xfer*
  %37 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %36)
  store %struct.ti_sci_info* %37, %struct.ti_sci_info** %16, align 8
  %38 = load %struct.ti_sci_info*, %struct.ti_sci_info** %16, align 8
  %39 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %38, i32 0, i32 1
  %40 = load %struct.device*, %struct.device** %39, align 8
  store %struct.device* %40, %struct.device** %18, align 8
  %41 = load %struct.ti_sci_info*, %struct.ti_sci_info** %16, align 8
  %42 = load i32, i32* @TI_SCI_MSG_GET_STATUS, align 4
  %43 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %44 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %41, i32 %42, i32 %43, i32 4, i32 24)
  store %struct.ti_sci_xfer* %44, %struct.ti_sci_xfer** %17, align 8
  %45 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %46 = call i64 @IS_ERR(%struct.ti_sci_xfer* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %50 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %49)
  store i32 %50, i32* %19, align 4
  %51 = load %struct.device*, %struct.device** %18, align 8
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %19, align 4
  store i32 %54, i32* %7, align 4
  br label %119

55:                                               ; preds = %34
  %56 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %57 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ti_sci_msg_req_get_status*
  store %struct.ti_sci_msg_req_get_status* %59, %struct.ti_sci_msg_req_get_status** %15, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ti_sci_msg_req_get_status*, %struct.ti_sci_msg_req_get_status** %15, align 8
  %62 = getelementptr inbounds %struct.ti_sci_msg_req_get_status, %struct.ti_sci_msg_req_get_status* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ti_sci_info*, %struct.ti_sci_info** %16, align 8
  %64 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %65 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %63, %struct.ti_sci_xfer* %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.device*, %struct.device** %18, align 8
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %113

72:                                               ; preds = %55
  %73 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %74 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.ti_sci_msg_resp_get_status*
  store %struct.ti_sci_msg_resp_get_status* %77, %struct.ti_sci_msg_resp_get_status** %14, align 8
  %78 = load %struct.ti_sci_msg_resp_get_status*, %struct.ti_sci_msg_resp_get_status** %14, align 8
  %79 = call i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_get_status* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %19, align 4
  br label %112

84:                                               ; preds = %72
  %85 = load %struct.ti_sci_msg_resp_get_status*, %struct.ti_sci_msg_resp_get_status** %14, align 8
  %86 = getelementptr inbounds %struct.ti_sci_msg_resp_get_status, %struct.ti_sci_msg_resp_get_status* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TI_SCI_ADDR_LOW_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.ti_sci_msg_resp_get_status*, %struct.ti_sci_msg_resp_get_status** %14, align 8
  %91 = getelementptr inbounds %struct.ti_sci_msg_resp_get_status, %struct.ti_sci_msg_resp_get_status* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @TI_SCI_ADDR_HIGH_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* @TI_SCI_ADDR_HIGH_MASK, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %89, %97
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.ti_sci_msg_resp_get_status*, %struct.ti_sci_msg_resp_get_status** %14, align 8
  %101 = getelementptr inbounds %struct.ti_sci_msg_resp_get_status, %struct.ti_sci_msg_resp_get_status* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.ti_sci_msg_resp_get_status*, %struct.ti_sci_msg_resp_get_status** %14, align 8
  %105 = getelementptr inbounds %struct.ti_sci_msg_resp_get_status, %struct.ti_sci_msg_resp_get_status* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %12, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.ti_sci_msg_resp_get_status*, %struct.ti_sci_msg_resp_get_status** %14, align 8
  %109 = getelementptr inbounds %struct.ti_sci_msg_resp_get_status, %struct.ti_sci_msg_resp_get_status* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %84, %81
  br label %113

113:                                              ; preds = %112, %68
  %114 = load %struct.ti_sci_info*, %struct.ti_sci_info** %16, align 8
  %115 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %114, i32 0, i32 0
  %116 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %117 = call i32 @ti_sci_put_one_xfer(i32* %115, %struct.ti_sci_xfer* %116)
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %113, %48, %30, %22
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_get_status*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
