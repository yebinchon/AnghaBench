; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_rm_udmap_rx_ch_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_cmd_rm_udmap_rx_ch_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i32 }
%struct.ti_sci_msg_rm_udmap_rx_ch_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ti_sci_msg_hdr = type { i32 }
%struct.ti_sci_xfer = type { i64 }
%struct.ti_sci_info = type { i32, %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TISCI_MSG_RM_UDMAP_RX_CH_CFG = common dso_local global i32 0, align 4
@TI_SCI_FLAG_REQ_ACK_ON_PROCESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Message RX_CH_CFG alloc failed(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Mbox send RX_CH_CFG fail %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"RX_CH_CFG: chn %u ret:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_sci_handle*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*)* @ti_sci_cmd_rm_udmap_rx_ch_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_cmd_rm_udmap_rx_ch_cfg(%struct.ti_sci_handle* %0, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_sci_handle*, align 8
  %5 = alloca %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, align 8
  %6 = alloca %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, align 8
  %7 = alloca %struct.ti_sci_msg_hdr*, align 8
  %8 = alloca %struct.ti_sci_xfer*, align 8
  %9 = alloca %struct.ti_sci_info*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %4, align 8
  store %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %1, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %13 = call i64 @IS_ERR_OR_NULL(%struct.ti_sci_handle* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %163

18:                                               ; preds = %2
  %19 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %4, align 8
  %20 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_handle* %19)
  store %struct.ti_sci_info* %20, %struct.ti_sci_info** %9, align 8
  %21 = load %struct.ti_sci_info*, %struct.ti_sci_info** %9, align 8
  %22 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %21, i32 0, i32 1
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %10, align 8
  %24 = load %struct.ti_sci_info*, %struct.ti_sci_info** %9, align 8
  %25 = load i32, i32* @TISCI_MSG_RM_UDMAP_RX_CH_CFG, align 4
  %26 = load i32, i32* @TI_SCI_FLAG_REQ_ACK_ON_PROCESSED, align 4
  %27 = call %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %24, i32 %25, i32 %26, i32 68, i32 4)
  store %struct.ti_sci_xfer* %27, %struct.ti_sci_xfer** %8, align 8
  %28 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %29 = call i64 @IS_ERR(%struct.ti_sci_xfer* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.ti_sci_xfer* %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.device*, %struct.device** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %163

38:                                               ; preds = %18
  %39 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %40 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*
  store %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %42, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %43 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %44 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %43, i32 0, i32 16
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %47 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %46, i32 0, i32 16
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %49 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %52 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %51, i32 0, i32 15
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %54 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %57 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %59 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %58, i32 0, i32 14
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %62 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %61, i32 0, i32 13
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %64 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %67 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %69 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %72 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %74 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %77 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %79 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %82 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %84 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %87 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %89 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %92 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %94 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %97 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %99 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %102 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %104 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %107 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %109 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %112 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %114 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %117 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %119 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %122 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %124 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req** %6, align 8
  %127 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg_req* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ti_sci_info*, %struct.ti_sci_info** %9, align 8
  %129 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %130 = call i32 @ti_sci_do_xfer(%struct.ti_sci_info* %128, %struct.ti_sci_xfer* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %38
  %134 = load %struct.device*, %struct.device** %10, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %151

137:                                              ; preds = %38
  %138 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %139 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %141, %struct.ti_sci_msg_hdr** %7, align 8
  %142 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %7, align 8
  %143 = call i64 @ti_sci_is_response_ack(%struct.ti_sci_msg_hdr* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  br label %149

149:                                              ; preds = %146, %145
  %150 = phi i32 [ 0, %145 ], [ %148, %146 ]
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %149, %133
  %152 = load %struct.ti_sci_info*, %struct.ti_sci_info** %9, align 8
  %153 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %152, i32 0, i32 0
  %154 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %8, align 8
  %155 = call i32 @ti_sci_put_one_xfer(i32* %153, %struct.ti_sci_xfer* %154)
  %156 = load %struct.device*, %struct.device** %10, align 8
  %157 = load %struct.ti_sci_msg_rm_udmap_rx_ch_cfg*, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg** %5, align 8
  %158 = getelementptr inbounds %struct.ti_sci_msg_rm_udmap_rx_ch_cfg, %struct.ti_sci_msg_rm_udmap_rx_ch_cfg* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @dev_dbg(%struct.device* %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* %11, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %151, %31, %15
  %164 = load i32, i32* %3, align 4
  ret i32 %164
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

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
