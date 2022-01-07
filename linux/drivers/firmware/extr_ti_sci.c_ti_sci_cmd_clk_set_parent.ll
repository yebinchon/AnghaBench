; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_set_clock_parent = type { i32, i32, i32, i32, i32 }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_SET_CLOCK_PARENT = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i32, i32)* @ti_sci_cmd_clk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_clk_set_parent(%struct.ti_sci_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_sci_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ti_sci_info*, align 8
  %11 = alloca %struct.ti_sci_msg_req_set_clock_parent*, align 8
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
  br label %114

24:                                               ; preds = %4
  %25 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %6, align 8
  %26 = icmp ne %struct.ti_sci_handle* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %114

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
  %38 = load i32, i32* @TI_SCI_MSG_SET_CLOCK_PARENT, align 4
  %39 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %40 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %37, i32 %38, i32 %39, i32 20, i32 4)
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
  br label %114

51:                                               ; preds = %30
  %52 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %53 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.ti_sci_msg_req_set_clock_parent*
  store %struct.ti_sci_msg_req_set_clock_parent* %55, %struct.ti_sci_msg_req_set_clock_parent** %11, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ti_sci_msg_req_set_clock_parent*, %struct.ti_sci_msg_req_set_clock_parent** %11, align 8
  %58 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_parent, %struct.ti_sci_msg_req_set_clock_parent* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 255
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ti_sci_msg_req_set_clock_parent*, %struct.ti_sci_msg_req_set_clock_parent** %11, align 8
  %64 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_parent, %struct.ti_sci_msg_req_set_clock_parent* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %71

65:                                               ; preds = %51
  %66 = load %struct.ti_sci_msg_req_set_clock_parent*, %struct.ti_sci_msg_req_set_clock_parent** %11, align 8
  %67 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_parent, %struct.ti_sci_msg_req_set_clock_parent* %66, i32 0, i32 1
  store i32 255, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ti_sci_msg_req_set_clock_parent*, %struct.ti_sci_msg_req_set_clock_parent** %11, align 8
  %70 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_parent, %struct.ti_sci_msg_req_set_clock_parent* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 255
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.ti_sci_msg_req_set_clock_parent*, %struct.ti_sci_msg_req_set_clock_parent** %11, align 8
  %77 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_parent, %struct.ti_sci_msg_req_set_clock_parent* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  br label %84

78:                                               ; preds = %71
  %79 = load %struct.ti_sci_msg_req_set_clock_parent*, %struct.ti_sci_msg_req_set_clock_parent** %11, align 8
  %80 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_parent, %struct.ti_sci_msg_req_set_clock_parent* %79, i32 0, i32 3
  store i32 255, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.ti_sci_msg_req_set_clock_parent*, %struct.ti_sci_msg_req_set_clock_parent** %11, align 8
  %83 = getelementptr inbounds %struct.ti_sci_msg_req_set_clock_parent, %struct.ti_sci_msg_req_set_clock_parent* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %74
  %85 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %86 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %87 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %85, %struct.ti_sci_xfer* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.device*, %struct.device** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %108

94:                                               ; preds = %84
  %95 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %96 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %98, %struct.ti_sci_msg_hdr** %12, align 8
  %99 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %12, align 8
  %100 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %106

103:                                              ; preds = %94
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  br label %106

106:                                              ; preds = %103, %102
  %107 = phi i32 [ 0, %102 ], [ %105, %103 ]
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %106, %90
  %109 = load %struct.ti_sci_info*, %struct.ti_sci_info** %10, align 8
  %110 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %109, i32 0, i32 0
  %111 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %112 = call i32 @ti_sci_put_one_xfer(i32* %110, %struct.ti_sci_xfer* %111)
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %108, %44, %27, %20
  %115 = load i32, i32* %5, align 4
  ret i32 %115
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
