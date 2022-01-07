; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_ring_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_ring_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i32 }
%struct.ti_sci_msg_rm_ring_get_cfg_resp = type { i32, i32, i8*, i8*, i8*, i32 }
%struct.ti_sci_msg_rm_ring_get_cfg_req = type { i8*, i8* }
%struct.ti_sci_xfer = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_RM_RING_GET_CFG = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RM_RA:Message get config failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"RM_RA:Mbox get config send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"RM_RA:get config ring %u ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i8*, i8*, i32*, i8**, i8**, i8**, i32*, i32*)* @ti_sci_cmd_ring_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_ring_get_config(%struct.ti_sci_handle* %0, i8* %1, i8* %2, i32* %3, i8** %4, i8** %5, i8** %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ti_sci_handle*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.ti_sci_msg_rm_ring_get_cfg_resp*, align 8
  %21 = alloca %struct.ti_sci_msg_rm_ring_get_cfg_req*, align 8
  %22 = alloca %struct.ti_sci_xfer*, align 8
  %23 = alloca %struct.ti_sci_info*, align 8
  %24 = alloca %struct.device*, align 8
  %25 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i8** %4, i8*** %15, align 8
  store i8** %5, i8*** %16, align 8
  store i8** %6, i8*** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %11, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.ti_sci_handle* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %9
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %143

32:                                               ; preds = %9
  %33 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %11, align 8
  %34 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_handle* %33)
  store %struct.ti_sci_info* %34, %struct.ti_sci_info** %23, align 8
  %35 = load %struct.ti_sci_info*, %struct.ti_sci_info** %23, align 8
  %36 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %35, i32 0, i32 1
  %37 = load %struct.device*, %struct.device** %36, align 8
  store %struct.device* %37, %struct.device** %24, align 8
  %38 = load %struct.ti_sci_info*, %struct.ti_sci_info** %23, align 8
  %39 = load i32, i32* @TI_SCI_MSG_RM_RING_GET_CFG, align 4
  %40 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %41 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %38, i32 %39, i32 %40, i32 16, i32 40)
  store %struct.ti_sci_xfer* %41, %struct.ti_sci_xfer** %22, align 8
  %42 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %22, align 8
  %43 = call i64 @IS_ERR(%struct.ti_sci_xfer* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %32
  %46 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %22, align 8
  %47 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %46)
  store i32 %47, i32* %25, align 4
  %48 = load %struct.device*, %struct.device** %24, align 8
  %49 = load i32, i32* %25, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %25, align 4
  store i32 %51, i32* %10, align 4
  br label %143

52:                                               ; preds = %32
  %53 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %22, align 8
  %54 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.ti_sci_msg_rm_ring_get_cfg_req*
  store %struct.ti_sci_msg_rm_ring_get_cfg_req* %56, %struct.ti_sci_msg_rm_ring_get_cfg_req** %21, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.ti_sci_msg_rm_ring_get_cfg_req*, %struct.ti_sci_msg_rm_ring_get_cfg_req** %21, align 8
  %59 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_get_cfg_req, %struct.ti_sci_msg_rm_ring_get_cfg_req* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.ti_sci_msg_rm_ring_get_cfg_req*, %struct.ti_sci_msg_rm_ring_get_cfg_req** %21, align 8
  %62 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_get_cfg_req, %struct.ti_sci_msg_rm_ring_get_cfg_req* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ti_sci_info*, %struct.ti_sci_info** %23, align 8
  %64 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %22, align 8
  %65 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %63, %struct.ti_sci_xfer* %64)
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %25, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %52
  %69 = load %struct.device*, %struct.device** %24, align 8
  %70 = load i32, i32* %25, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %133

72:                                               ; preds = %52
  %73 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %22, align 8
  %74 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.ti_sci_msg_rm_ring_get_cfg_resp*
  store %struct.ti_sci_msg_rm_ring_get_cfg_resp* %76, %struct.ti_sci_msg_rm_ring_get_cfg_resp** %20, align 8
  %77 = load %struct.ti_sci_msg_rm_ring_get_cfg_resp*, %struct.ti_sci_msg_rm_ring_get_cfg_resp** %20, align 8
  %78 = call i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_rm_ring_get_cfg_resp* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %25, align 4
  br label %132

83:                                               ; preds = %72
  %84 = load i32*, i32** %14, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.ti_sci_msg_rm_ring_get_cfg_resp*, %struct.ti_sci_msg_rm_ring_get_cfg_resp** %20, align 8
  %88 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_get_cfg_resp, %struct.ti_sci_msg_rm_ring_get_cfg_resp* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %14, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i8**, i8*** %15, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.ti_sci_msg_rm_ring_get_cfg_resp*, %struct.ti_sci_msg_rm_ring_get_cfg_resp** %20, align 8
  %96 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_get_cfg_resp, %struct.ti_sci_msg_rm_ring_get_cfg_resp* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %15, align 8
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i8**, i8*** %16, align 8
  %101 = icmp ne i8** %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.ti_sci_msg_rm_ring_get_cfg_resp*, %struct.ti_sci_msg_rm_ring_get_cfg_resp** %20, align 8
  %104 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_get_cfg_resp, %struct.ti_sci_msg_rm_ring_get_cfg_resp* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %16, align 8
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i8**, i8*** %17, align 8
  %109 = icmp ne i8** %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.ti_sci_msg_rm_ring_get_cfg_resp*, %struct.ti_sci_msg_rm_ring_get_cfg_resp** %20, align 8
  %112 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_get_cfg_resp, %struct.ti_sci_msg_rm_ring_get_cfg_resp* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %17, align 8
  store i8* %113, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i32*, i32** %18, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.ti_sci_msg_rm_ring_get_cfg_resp*, %struct.ti_sci_msg_rm_ring_get_cfg_resp** %20, align 8
  %120 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_get_cfg_resp, %struct.ti_sci_msg_rm_ring_get_cfg_resp* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %18, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i32*, i32** %19, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.ti_sci_msg_rm_ring_get_cfg_resp*, %struct.ti_sci_msg_rm_ring_get_cfg_resp** %20, align 8
  %128 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_get_cfg_resp, %struct.ti_sci_msg_rm_ring_get_cfg_resp* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %19, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131, %80
  br label %133

133:                                              ; preds = %132, %68
  %134 = load %struct.ti_sci_info*, %struct.ti_sci_info** %23, align 8
  %135 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %134, i32 0, i32 0
  %136 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %22, align 8
  %137 = call i32 @ti_sci_put_one_xfer(i32* %135, %struct.ti_sci_xfer* %136)
  %138 = load %struct.device*, %struct.device** %24, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = load i32, i32* %25, align 4
  %141 = call i32 @dev_dbg(%struct.device* %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %139, i32 %140)
  %142 = load i32, i32* %25, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %133, %45, %29
  %144 = load i32, i32* %10, align 4
  ret i32 %144
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ti_sci_handle*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_handle*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @ti_sci_is_response_ack(%struct.ti_sci_msg_rm_ring_get_cfg_resp*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
