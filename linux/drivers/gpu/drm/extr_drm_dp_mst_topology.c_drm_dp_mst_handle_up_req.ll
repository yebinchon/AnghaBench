; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_handle_up_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_handle_up_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.drm_dp_sideband_msg_req_body = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_dp_mst_branch = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Got MST reply from unknown device %d\0A\00", align 1
@DP_CONNECTION_STATUS_NOTIFY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Got CSN: pn: %d ldps:%d ddps: %d mcs: %d ip: %d pdt: %d\0A\00", align 1
@DP_RESOURCE_STATUS_NOTIFY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Got RSN: pn: %d avail_pbn %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_topology_mgr*)* @drm_dp_mst_handle_up_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_mst_handle_up_req(%struct.drm_dp_mst_topology_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_sideband_msg_req_body, align 8
  %6 = alloca %struct.drm_dp_mst_branch*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %9 = call i32 @drm_dp_get_one_sb_msg(%struct.drm_dp_mst_topology_mgr* %8, i32 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %13 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %12, i32 0, i32 0
  %14 = call i32 @memset(%struct.TYPE_10__* %13, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %191

15:                                               ; preds = %1
  %16 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %17 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %189

21:                                               ; preds = %15
  store %struct.drm_dp_mst_branch* null, %struct.drm_dp_mst_branch** %6, align 8
  %22 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %23 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %21
  %29 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %30 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %31 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %36 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.drm_dp_mst_branch* @drm_dp_get_mst_branch_device(%struct.drm_dp_mst_topology_mgr* %29, i32 %34, i32 %39)
  store %struct.drm_dp_mst_branch* %40, %struct.drm_dp_mst_branch** %6, align 8
  %41 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %42 = icmp ne %struct.drm_dp_mst_branch* %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %28
  %44 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %45 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %51 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %50, i32 0, i32 0
  %52 = call i32 @memset(%struct.TYPE_10__* %51, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %191

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53, %21
  %55 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %56 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  %60 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %61 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %60, i32 0, i32 0
  %62 = call i32 @drm_dp_sideband_parse_req(%struct.TYPE_10__* %61, %struct.drm_dp_sideband_msg_req_body* %5)
  %63 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DP_CONNECTION_STATUS_NOTIFY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %132

67:                                               ; preds = %54
  %68 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %69 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %70 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @drm_dp_send_up_ack_reply(%struct.drm_dp_mst_topology_mgr* %68, i32 %71, i64 %73, i32 %74, i32 0)
  %76 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %77 = icmp ne %struct.drm_dp_mst_branch* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %67
  %79 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %80 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.drm_dp_mst_branch* @drm_dp_get_mst_branch_device_by_guid(%struct.drm_dp_mst_topology_mgr* %79, i32 %83)
  store %struct.drm_dp_mst_branch* %84, %struct.drm_dp_mst_branch** %6, align 8
  br label %85

85:                                               ; preds = %78, %67
  %86 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %87 = icmp ne %struct.drm_dp_mst_branch* %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %90 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %96 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %95, i32 0, i32 0
  %97 = call i32 @memset(%struct.TYPE_10__* %96, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %191

98:                                               ; preds = %85
  %99 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %100 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = call i32 @drm_dp_update_port(%struct.drm_dp_mst_branch* %99, %struct.TYPE_11__* %101)
  %103 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %110, i32 %114, i32 %118, i32 %122, i32 %126)
  %128 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %129 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @drm_kms_helper_hotplug_event(i32 %130)
  br label %179

132:                                              ; preds = %54
  %133 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DP_RESOURCE_STATUS_NOTIFY, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %132
  %138 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %139 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %140 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @drm_dp_send_up_ack_reply(%struct.drm_dp_mst_topology_mgr* %138, i32 %141, i64 %143, i32 %144, i32 0)
  %146 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %147 = icmp ne %struct.drm_dp_mst_branch* %146, null
  br i1 %147, label %155, label %148

148:                                              ; preds = %137
  %149 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %150 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call %struct.drm_dp_mst_branch* @drm_dp_get_mst_branch_device_by_guid(%struct.drm_dp_mst_topology_mgr* %149, i32 %153)
  store %struct.drm_dp_mst_branch* %154, %struct.drm_dp_mst_branch** %6, align 8
  br label %155

155:                                              ; preds = %148, %137
  %156 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %157 = icmp ne %struct.drm_dp_mst_branch* %156, null
  br i1 %157, label %168, label %158

158:                                              ; preds = %155
  %159 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %160 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %166 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %165, i32 0, i32 0
  %167 = call i32 @memset(%struct.TYPE_10__* %166, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %191

168:                                              ; preds = %155
  %169 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %5, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %176)
  br label %178

178:                                              ; preds = %168, %132
  br label %179

179:                                              ; preds = %178, %98
  %180 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %181 = icmp ne %struct.drm_dp_mst_branch* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %184 = call i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch* %183)
  br label %185

185:                                              ; preds = %182, %179
  %186 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %187 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %186, i32 0, i32 0
  %188 = call i32 @memset(%struct.TYPE_10__* %187, i32 0, i32 4)
  br label %189

189:                                              ; preds = %185, %15
  %190 = load i32, i32* %4, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %189, %158, %88, %43, %11
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @drm_dp_get_one_sb_msg(%struct.drm_dp_mst_topology_mgr*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.drm_dp_mst_branch* @drm_dp_get_mst_branch_device(%struct.drm_dp_mst_topology_mgr*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @drm_dp_sideband_parse_req(%struct.TYPE_10__*, %struct.drm_dp_sideband_msg_req_body*) #1

declare dso_local i32 @drm_dp_send_up_ack_reply(%struct.drm_dp_mst_topology_mgr*, i32, i64, i32, i32) #1

declare dso_local %struct.drm_dp_mst_branch* @drm_dp_get_mst_branch_device_by_guid(%struct.drm_dp_mst_topology_mgr*, i32) #1

declare dso_local i32 @drm_dp_update_port(%struct.drm_dp_mst_branch*, %struct.TYPE_11__*) #1

declare dso_local i32 @drm_kms_helper_hotplug_event(i32) #1

declare dso_local i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
