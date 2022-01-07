; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_get_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_get_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ti_sci_msg_req_get_device_state = type { i32 }
%struct.ti_sci_msg_resp_get_device_state = type { i32, i32, i32, i32 }
%struct.ti_sci_xfer = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_GET_DEVICE_STATE = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Message alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mbox send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i32, i32*, i32*, i32*, i32*)* @ti_sci_get_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_get_device_state(%struct.ti_sci_handle* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_sci_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ti_sci_info*, align 8
  %15 = alloca %struct.ti_sci_msg_req_get_device_state*, align 8
  %16 = alloca %struct.ti_sci_msg_resp_get_device_state*, align 8
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
  %21 = bitcast %struct.ti_sci_handle* %20 to %struct.ti_sci_xfer*
  %22 = call i64 @IS_ERR(%struct.ti_sci_xfer* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %8, align 8
  %26 = bitcast %struct.ti_sci_handle* %25 to %struct.ti_sci_xfer*
  %27 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %26)
  store i32 %27, i32* %7, align 4
  br label %137

28:                                               ; preds = %6
  %29 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %8, align 8
  %30 = icmp ne %struct.ti_sci_handle* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %137

34:                                               ; preds = %28
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %137

49:                                               ; preds = %43, %40, %37, %34
  %50 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %8, align 8
  %51 = bitcast %struct.ti_sci_handle* %50 to %struct.ti_sci_xfer*
  %52 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer* %51)
  store %struct.ti_sci_info* %52, %struct.ti_sci_info** %14, align 8
  %53 = load %struct.ti_sci_info*, %struct.ti_sci_info** %14, align 8
  %54 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %53, i32 0, i32 1
  %55 = load %struct.device*, %struct.device** %54, align 8
  store %struct.device* %55, %struct.device** %18, align 8
  %56 = load %struct.ti_sci_info*, %struct.ti_sci_info** %14, align 8
  %57 = load i32, i32* @TI_SCI_MSG_GET_DEVICE_STATE, align 4
  %58 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %59 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %56, i32 %57, i32 %58, i32 4, i32 16)
  store %struct.ti_sci_xfer* %59, %struct.ti_sci_xfer** %17, align 8
  %60 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %61 = call i64 @IS_ERR(%struct.ti_sci_xfer* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %65 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %64)
  store i32 %65, i32* %19, align 4
  %66 = load %struct.device*, %struct.device** %18, align 8
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %19, align 4
  store i32 %69, i32* %7, align 4
  br label %137

70:                                               ; preds = %49
  %71 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %72 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.ti_sci_msg_req_get_device_state*
  store %struct.ti_sci_msg_req_get_device_state* %74, %struct.ti_sci_msg_req_get_device_state** %15, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.ti_sci_msg_req_get_device_state*, %struct.ti_sci_msg_req_get_device_state** %15, align 8
  %77 = getelementptr inbounds %struct.ti_sci_msg_req_get_device_state, %struct.ti_sci_msg_req_get_device_state* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ti_sci_info*, %struct.ti_sci_info** %14, align 8
  %79 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %80 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %78, %struct.ti_sci_xfer* %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load %struct.device*, %struct.device** %18, align 8
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %131

87:                                               ; preds = %70
  %88 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %89 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.ti_sci_msg_resp_get_device_state*
  store %struct.ti_sci_msg_resp_get_device_state* %91, %struct.ti_sci_msg_resp_get_device_state** %16, align 8
  %92 = load %struct.ti_sci_msg_resp_get_device_state*, %struct.ti_sci_msg_resp_get_device_state** %16, align 8
  %93 = call i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_get_device_state* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %19, align 4
  br label %131

98:                                               ; preds = %87
  %99 = load i32*, i32** %10, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.ti_sci_msg_resp_get_device_state*, %struct.ti_sci_msg_resp_get_device_state** %16, align 8
  %103 = getelementptr inbounds %struct.ti_sci_msg_resp_get_device_state, %struct.ti_sci_msg_resp_get_device_state* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %10, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32*, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.ti_sci_msg_resp_get_device_state*, %struct.ti_sci_msg_resp_get_device_state** %16, align 8
  %111 = getelementptr inbounds %struct.ti_sci_msg_resp_get_device_state, %struct.ti_sci_msg_resp_get_device_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %11, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i32*, i32** %12, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.ti_sci_msg_resp_get_device_state*, %struct.ti_sci_msg_resp_get_device_state** %16, align 8
  %119 = getelementptr inbounds %struct.ti_sci_msg_resp_get_device_state, %struct.ti_sci_msg_resp_get_device_state* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %12, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32*, i32** %13, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.ti_sci_msg_resp_get_device_state*, %struct.ti_sci_msg_resp_get_device_state** %16, align 8
  %127 = getelementptr inbounds %struct.ti_sci_msg_resp_get_device_state, %struct.ti_sci_msg_resp_get_device_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %122
  br label %131

131:                                              ; preds = %130, %95, %83
  %132 = load %struct.ti_sci_info*, %struct.ti_sci_info** %14, align 8
  %133 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %132, i32 0, i32 0
  %134 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %17, align 8
  %135 = call i32 @ti_sci_put_one_xfer(i32* %133, %struct.ti_sci_xfer* %134)
  %136 = load i32, i32* %19, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %131, %63, %46, %31, %24
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_xfer*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_resp_get_device_state*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
