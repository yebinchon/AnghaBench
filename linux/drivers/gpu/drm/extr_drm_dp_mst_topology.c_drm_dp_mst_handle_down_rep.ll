; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_handle_down_rep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_handle_down_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.drm_dp_sideband_msg_tx = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__, %struct.drm_dp_mst_branch* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_dp_mst_branch = type { %struct.drm_dp_sideband_msg_tx** }

@.str = private unnamed_addr constant [38 x i8] c"Got MST reply from unknown device %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Got MST reply with no msg %p %d %d %02x %02x\0A\00", align 1
@DP_SIDEBAND_REPLY_NAK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"Got NAK reply: req 0x%02x (%s), reason 0x%02x (%s), nak data 0x%02x\0A\00", align 1
@DRM_DP_SIDEBAND_TX_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_topology_mgr*)* @drm_dp_mst_handle_down_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_mst_handle_down_rep(%struct.drm_dp_mst_topology_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %6 = alloca %struct.drm_dp_mst_branch*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %9 = call i32 @drm_dp_get_one_sb_msg(%struct.drm_dp_mst_topology_mgr* %8, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %13 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %12, i32 0, i32 2
  %14 = call i32 @memset(%struct.TYPE_10__* %13, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %168

15:                                               ; preds = %1
  %16 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %17 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %166

21:                                               ; preds = %15
  store i32 -1, i32* %7, align 4
  %22 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %23 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %24 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %29 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call %struct.drm_dp_mst_branch* @drm_dp_get_mst_branch_device(%struct.drm_dp_mst_topology_mgr* %22, i32 %27, i32* %32)
  store %struct.drm_dp_mst_branch* %33, %struct.drm_dp_mst_branch** %6, align 8
  %34 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %35 = icmp ne %struct.drm_dp_mst_branch* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %21
  %37 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %38 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.drm_dp_mst_branch*
  %44 = call i32 (i8*, %struct.drm_dp_mst_branch*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.drm_dp_mst_branch* %43)
  %45 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %46 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %45, i32 0, i32 2
  %47 = call i32 @memset(%struct.TYPE_10__* %46, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %168

48:                                               ; preds = %21
  %49 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %50 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %7, align 4
  %54 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %55 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %58 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %57, i32 0, i32 0
  %59 = load %struct.drm_dp_sideband_msg_tx**, %struct.drm_dp_sideband_msg_tx*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %59, i64 %61
  %63 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %62, align 8
  store %struct.drm_dp_sideband_msg_tx* %63, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %64 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %65 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %68 = icmp ne %struct.drm_dp_sideband_msg_tx* %67, null
  br i1 %68, label %100, label %69

69:                                               ; preds = %48
  %70 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %71 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %72 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %77 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %82 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %89 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, %struct.drm_dp_mst_branch*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.drm_dp_mst_branch* %70, i32 %75, i32 %80, i32 %87, i32 %93)
  %95 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %96 = call i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch* %95)
  %97 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %98 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %97, i32 0, i32 2
  %99 = call i32 @memset(%struct.TYPE_10__* %98, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %168

100:                                              ; preds = %48
  %101 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %102 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %101, i32 0, i32 2
  %103 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %104 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %103, i32 0, i32 1
  %105 = call i32 @drm_dp_sideband_parse_reply(%struct.TYPE_10__* %102, %struct.TYPE_11__* %104)
  %106 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %107 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DP_SIDEBAND_REPLY_NAK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %142

112:                                              ; preds = %100
  %113 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %114 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %115, align 8
  %117 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %118 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %119, align 8
  %121 = call i32 @drm_dp_mst_req_type_str(%struct.drm_dp_mst_branch* %120)
  %122 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %123 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %129 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @drm_dp_mst_nak_reason_str(i32 %133)
  %135 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %136 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i8*, %struct.drm_dp_mst_branch*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), %struct.drm_dp_mst_branch* %116, i32 %121, i32 %127, i32 %134, i32 %140)
  br label %142

142:                                              ; preds = %112, %100
  %143 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %144 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %143, i32 0, i32 2
  %145 = call i32 @memset(%struct.TYPE_10__* %144, i32 0, i32 4)
  %146 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %147 = call i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch* %146)
  %148 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %149 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %148, i32 0, i32 1
  %150 = call i32 @mutex_lock(i32* %149)
  %151 = load i32, i32* @DRM_DP_SIDEBAND_TX_RX, align 4
  %152 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %5, align 8
  %153 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %155 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %154, i32 0, i32 0
  %156 = load %struct.drm_dp_sideband_msg_tx**, %struct.drm_dp_sideband_msg_tx*** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %156, i64 %158
  store %struct.drm_dp_sideband_msg_tx* null, %struct.drm_dp_sideband_msg_tx** %159, align 8
  %160 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %161 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %160, i32 0, i32 1
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %164 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %163, i32 0, i32 0
  %165 = call i32 @wake_up_all(i32* %164)
  br label %166

166:                                              ; preds = %142, %15
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %166, %69, %36, %11
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @drm_dp_get_one_sb_msg(%struct.drm_dp_mst_topology_mgr*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.drm_dp_mst_branch* @drm_dp_get_mst_branch_device(%struct.drm_dp_mst_topology_mgr*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, %struct.drm_dp_mst_branch*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch*) #1

declare dso_local i32 @drm_dp_sideband_parse_reply(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @drm_dp_mst_req_type_str(%struct.drm_dp_mst_branch*) #1

declare dso_local i32 @drm_dp_mst_nak_reason_str(i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
