; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_ring_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_ring_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i32 }
%struct.ti_sci_msg_rm_ring_cfg_req = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TI_SCI_MSG_RM_RING_CFG = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"RM_RA:Message config failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"RM_RA:Mbox config send fail %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"RM_RA:config ring %u ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @ti_sci_cmd_ring_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_ring_config(%struct.ti_sci_handle* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ti_sci_handle*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.ti_sci_msg_rm_ring_cfg_req*, align 8
  %23 = alloca %struct.ti_sci_msg_hdr*, align 8
  %24 = alloca %struct.ti_sci_xfer*, align 8
  %25 = alloca %struct.ti_sci_info*, align 8
  %26 = alloca %struct.device*, align 8
  %27 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %12, align 8
  %29 = call i64 @IS_ERR_OR_NULL(%struct.ti_sci_handle* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %10
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %119

34:                                               ; preds = %10
  %35 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %12, align 8
  %36 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_handle* %35)
  store %struct.ti_sci_info* %36, %struct.ti_sci_info** %25, align 8
  %37 = load %struct.ti_sci_info*, %struct.ti_sci_info** %25, align 8
  %38 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %37, i32 0, i32 1
  %39 = load %struct.device*, %struct.device** %38, align 8
  store %struct.device* %39, %struct.device** %26, align 8
  %40 = load %struct.ti_sci_info*, %struct.ti_sci_info** %25, align 8
  %41 = load i32, i32* @TI_SCI_MSG_RM_RING_CFG, align 4
  %42 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %43 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %40, i32 %41, i32 %42, i32 72, i32 4)
  store %struct.ti_sci_xfer* %43, %struct.ti_sci_xfer** %24, align 8
  %44 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %24, align 8
  %45 = call i64 @IS_ERR(%struct.ti_sci_xfer* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %24, align 8
  %49 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %48)
  store i32 %49, i32* %27, align 4
  %50 = load %struct.device*, %struct.device** %26, align 8
  %51 = load i32, i32* %27, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %27, align 4
  store i32 %53, i32* %11, align 4
  br label %119

54:                                               ; preds = %34
  %55 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %24, align 8
  %56 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.ti_sci_msg_rm_ring_cfg_req*
  store %struct.ti_sci_msg_rm_ring_cfg_req* %58, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %61 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %64 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %67 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %70 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %73 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %76 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %19, align 8
  %78 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %79 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %82 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = load %struct.ti_sci_msg_rm_ring_cfg_req*, %struct.ti_sci_msg_rm_ring_cfg_req** %22, align 8
  %85 = getelementptr inbounds %struct.ti_sci_msg_rm_ring_cfg_req, %struct.ti_sci_msg_rm_ring_cfg_req* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ti_sci_info*, %struct.ti_sci_info** %25, align 8
  %87 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %24, align 8
  %88 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %86, %struct.ti_sci_xfer* %87)
  store i32 %88, i32* %27, align 4
  %89 = load i32, i32* %27, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %54
  %92 = load %struct.device*, %struct.device** %26, align 8
  %93 = load i32, i32* %27, align 4
  %94 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %109

95:                                               ; preds = %54
  %96 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %24, align 8
  %97 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %99, %struct.ti_sci_msg_hdr** %23, align 8
  %100 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %23, align 8
  %101 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  br label %107

107:                                              ; preds = %104, %103
  %108 = phi i32 [ 0, %103 ], [ %106, %104 ]
  store i32 %108, i32* %27, align 4
  br label %109

109:                                              ; preds = %107, %91
  %110 = load %struct.ti_sci_info*, %struct.ti_sci_info** %25, align 8
  %111 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %110, i32 0, i32 0
  %112 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %24, align 8
  %113 = call i32 @ti_sci_put_one_xfer(i32* %111, %struct.ti_sci_xfer* %112)
  %114 = load %struct.device*, %struct.device** %26, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = load i32, i32* %27, align 4
  %117 = call i32 @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %115, i32 %116)
  %118 = load i32, i32* %27, align 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %109, %47, %31
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ti_sci_handle*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_handle*) #1

declare dso_local %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_xfer*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_sci_do_xfer(%struct.ti_sci_info*, %struct.ti_sci_xfer*) #1

declare dso_local i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr*) #1

declare dso_local i32 @ti_sci_put_one_xfer(i32*, %struct.ti_sci_xfer*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
