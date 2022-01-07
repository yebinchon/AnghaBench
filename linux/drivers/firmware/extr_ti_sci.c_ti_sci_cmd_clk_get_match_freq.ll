; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_clk_get_match_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_clk_get_match_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_query_clock_freq = type { i32, i32, i32, i8*, i8*, i8* }
%struct.ti_sci_msg_resp_query_clock_freq = type { i8* }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_QUERY_CLOCK_FREQ = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i32, i8*, i8*, i8*, i8**)* @ti_sci_cmd_clk_get_match_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_clk_get_match_freq(%struct.ti_sci_handle* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_sci_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.ti_sci_info*, align 8
  %17 = alloca %struct.ti_sci_msg_req_query_clock_freq*, align 8
  %18 = alloca %struct.ti_sci_msg_resp_query_clock_freq*, align 8
  %19 = alloca %struct.ti_sci_xfer*, align 8
  %20 = alloca %struct.device*, align 8
  %21 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %23 = bitcast %struct.ti_sci_handle* %22 to %struct.ti_sci_xfer*
  %24 = call i64 @IS_ERR(%struct.ti_sci_xfer* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %28 = bitcast %struct.ti_sci_handle* %27 to %struct.ti_sci_xfer*
  %29 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %28)
  store i32 %29, i32* %8, align 4
  br label %122

30:                                               ; preds = %7
  %31 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %32 = icmp ne %struct.ti_sci_handle* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8**, i8*** %15, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %122

39:                                               ; preds = %33
  %40 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %41 = bitcast %struct.ti_sci_handle* %40 to %struct.ti_sci_xfer*
  %42 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %41)
  store %struct.ti_sci_info* %42, %struct.ti_sci_info** %16, align 8
  %43 = load %struct.ti_sci_info*, %struct.ti_sci_info** %16, align 8
  %44 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %43, i32 0, i32 1
  %45 = load %struct.device*, %struct.device** %44, align 8
  store %struct.device* %45, %struct.device** %20, align 8
  %46 = load %struct.ti_sci_info*, %struct.ti_sci_info** %16, align 8
  %47 = load i32, i32* @TI_SCI_MSG_QUERY_CLOCK_FREQ, align 4
  %48 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %49 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %46, i32 %47, i32 %48, i32 40, i32 8)
  store %struct.ti_sci_xfer* %49, %struct.ti_sci_xfer** %19, align 8
  %50 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %19, align 8
  %51 = call i64 @IS_ERR(%struct.ti_sci_xfer* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %19, align 8
  %55 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %54)
  store i32 %55, i32* %21, align 4
  %56 = load %struct.device*, %struct.device** %20, align 8
  %57 = load i32, i32* %21, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %21, align 4
  store i32 %59, i32* %8, align 4
  br label %122

60:                                               ; preds = %39
  %61 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %19, align 8
  %62 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.ti_sci_msg_req_query_clock_freq*
  store %struct.ti_sci_msg_req_query_clock_freq* %64, %struct.ti_sci_msg_req_query_clock_freq** %17, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ti_sci_msg_req_query_clock_freq*, %struct.ti_sci_msg_req_query_clock_freq** %17, align 8
  %67 = getelementptr inbounds %struct.ti_sci_msg_req_query_clock_freq, %struct.ti_sci_msg_req_query_clock_freq* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 255
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.ti_sci_msg_req_query_clock_freq*, %struct.ti_sci_msg_req_query_clock_freq** %17, align 8
  %73 = getelementptr inbounds %struct.ti_sci_msg_req_query_clock_freq, %struct.ti_sci_msg_req_query_clock_freq* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %80

74:                                               ; preds = %60
  %75 = load %struct.ti_sci_msg_req_query_clock_freq*, %struct.ti_sci_msg_req_query_clock_freq** %17, align 8
  %76 = getelementptr inbounds %struct.ti_sci_msg_req_query_clock_freq, %struct.ti_sci_msg_req_query_clock_freq* %75, i32 0, i32 1
  store i32 255, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.ti_sci_msg_req_query_clock_freq*, %struct.ti_sci_msg_req_query_clock_freq** %17, align 8
  %79 = getelementptr inbounds %struct.ti_sci_msg_req_query_clock_freq, %struct.ti_sci_msg_req_query_clock_freq* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.ti_sci_msg_req_query_clock_freq*, %struct.ti_sci_msg_req_query_clock_freq** %17, align 8
  %83 = getelementptr inbounds %struct.ti_sci_msg_req_query_clock_freq, %struct.ti_sci_msg_req_query_clock_freq* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load %struct.ti_sci_msg_req_query_clock_freq*, %struct.ti_sci_msg_req_query_clock_freq** %17, align 8
  %86 = getelementptr inbounds %struct.ti_sci_msg_req_query_clock_freq, %struct.ti_sci_msg_req_query_clock_freq* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load %struct.ti_sci_msg_req_query_clock_freq*, %struct.ti_sci_msg_req_query_clock_freq** %17, align 8
  %89 = getelementptr inbounds %struct.ti_sci_msg_req_query_clock_freq, %struct.ti_sci_msg_req_query_clock_freq* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ti_sci_info*, %struct.ti_sci_info** %16, align 8
  %91 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %19, align 8
  %92 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %90, %struct.ti_sci_xfer* %91)
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %21, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %80
  %96 = load %struct.device*, %struct.device** %20, align 8
  %97 = load i32, i32* %21, align 4
  %98 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %116

99:                                               ; preds = %80
  %100 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %19, align 8
  %101 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.ti_sci_msg_resp_query_clock_freq*
  store %struct.ti_sci_msg_resp_query_clock_freq* %103, %struct.ti_sci_msg_resp_query_clock_freq** %18, align 8
  %104 = load %struct.ti_sci_msg_resp_query_clock_freq*, %struct.ti_sci_msg_resp_query_clock_freq** %18, align 8
  %105 = call i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_query_clock_freq* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %21, align 4
  br label %115

110:                                              ; preds = %99
  %111 = load %struct.ti_sci_msg_resp_query_clock_freq*, %struct.ti_sci_msg_resp_query_clock_freq** %18, align 8
  %112 = getelementptr inbounds %struct.ti_sci_msg_resp_query_clock_freq, %struct.ti_sci_msg_resp_query_clock_freq* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %15, align 8
  store i8* %113, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.ti_sci_info*, %struct.ti_sci_info** %16, align 8
  %118 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %117, i32 0, i32 0
  %119 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %19, align 8
  %120 = call i32 @ti_sci_put_one_xfer(i32* %118, %struct.ti_sci_xfer* %119)
  %121 = load i32, i32* %21, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %116, %53, %36, %26
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_query_clock_freq*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
