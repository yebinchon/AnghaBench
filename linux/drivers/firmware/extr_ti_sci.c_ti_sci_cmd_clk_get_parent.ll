; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_get_clock_parent = type { i32, i32, i32 }
%struct.ti_sci_msg_resp_get_clock_parent = type { i32, i32 }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_GET_CLOCK_PARENT = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i32, i32*)* @ti_sci_cmd_clk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_clk_get_parent(%struct.ti_sci_handle* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_sci_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ti_sci_info*, align 8
  %11 = alloca %struct.ti_sci_msg_req_get_clock_parent*, align 8
  %12 = alloca %struct.ti_sci_msg_resp_get_clock_parent*, align 8
  %13 = alloca %struct.ti_sci_xfer*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
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
  br label %118

24:                                               ; preds = %4
  %25 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %26 = icmp ne %struct.ti_sci_handle* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %118

33:                                               ; preds = %27
  %34 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %35 = bitcast %struct.ti_sci_handle* %34 to %struct.ti_sci_xfer*
  %36 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %35)
  store %struct.ti_sci_info* %36, %struct.ti_sci_info** %10, align 8
  %37 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %38 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %37, i32 0, i32 1
  %39 = load %struct.device*, %struct.device** %38, align 8
  store %struct.device* %39, %struct.device** %14, align 8
  %40 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %41 = load i32, i32* @TI_SCI_MSG_GET_CLOCK_PARENT, align 4
  %42 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %43 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %40, i32 %41, i32 %42, i32 12, i32 8)
  store %struct.ti_sci_xfer* %43, %struct.ti_sci_xfer** %13, align 8
  %44 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %45 = call i64 @IS_ERR(%struct.ti_sci_xfer* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %33
  %48 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %49 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %48)
  store i32 %49, i32* %15, align 4
  %50 = load %struct.device*, %struct.device** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %5, align 4
  br label %118

54:                                               ; preds = %33
  %55 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %56 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.ti_sci_msg_req_get_clock_parent*
  store %struct.ti_sci_msg_req_get_clock_parent* %58, %struct.ti_sci_msg_req_get_clock_parent** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ti_sci_msg_req_get_clock_parent*, %struct.ti_sci_msg_req_get_clock_parent** %11, align 8
  %61 = getelementptr inbounds %struct.ti_sci_msg_req_get_clock_parent, %struct.ti_sci_msg_req_get_clock_parent* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 255
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.ti_sci_msg_req_get_clock_parent*, %struct.ti_sci_msg_req_get_clock_parent** %11, align 8
  %67 = getelementptr inbounds %struct.ti_sci_msg_req_get_clock_parent, %struct.ti_sci_msg_req_get_clock_parent* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %74

68:                                               ; preds = %54
  %69 = load %struct.ti_sci_msg_req_get_clock_parent*, %struct.ti_sci_msg_req_get_clock_parent** %11, align 8
  %70 = getelementptr inbounds %struct.ti_sci_msg_req_get_clock_parent, %struct.ti_sci_msg_req_get_clock_parent* %69, i32 0, i32 1
  store i32 255, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.ti_sci_msg_req_get_clock_parent*, %struct.ti_sci_msg_req_get_clock_parent** %11, align 8
  %73 = getelementptr inbounds %struct.ti_sci_msg_req_get_clock_parent, %struct.ti_sci_msg_req_get_clock_parent* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %64
  %75 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %76 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %77 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %75, %struct.ti_sci_xfer* %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.device*, %struct.device** %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %112

84:                                               ; preds = %74
  %85 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %86 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.ti_sci_msg_resp_get_clock_parent*
  store %struct.ti_sci_msg_resp_get_clock_parent* %88, %struct.ti_sci_msg_resp_get_clock_parent** %12, align 8
  %89 = load %struct.ti_sci_msg_resp_get_clock_parent*, %struct.ti_sci_msg_resp_get_clock_parent** %12, align 8
  %90 = call i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_get_clock_parent* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %15, align 4
  br label %111

95:                                               ; preds = %84
  %96 = load %struct.ti_sci_msg_resp_get_clock_parent*, %struct.ti_sci_msg_resp_get_clock_parent** %12, align 8
  %97 = getelementptr inbounds %struct.ti_sci_msg_resp_get_clock_parent, %struct.ti_sci_msg_resp_get_clock_parent* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 255
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.ti_sci_msg_resp_get_clock_parent*, %struct.ti_sci_msg_resp_get_clock_parent** %12, align 8
  %102 = getelementptr inbounds %struct.ti_sci_msg_resp_get_clock_parent, %struct.ti_sci_msg_resp_get_clock_parent* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  br label %110

105:                                              ; preds = %95
  %106 = load %struct.ti_sci_msg_resp_get_clock_parent*, %struct.ti_sci_msg_resp_get_clock_parent** %12, align 8
  %107 = getelementptr inbounds %struct.ti_sci_msg_resp_get_clock_parent, %struct.ti_sci_msg_resp_get_clock_parent* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %114 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %113, i32 0, i32 0
  %115 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %116 = call i32 @ti_sci_put_one_xfer(i32* %114, %struct.ti_sci_xfer* %115)
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %112, %47, %30, %20
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_get_clock_parent*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
