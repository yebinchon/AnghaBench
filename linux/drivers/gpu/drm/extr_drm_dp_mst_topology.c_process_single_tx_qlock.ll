; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_process_single_tx_qlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_process_single_tx_qlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_sideband_msg_tx = type { i64, i32, i32, i32, i32* }
%struct.drm_dp_sideband_msg_hdr = type { i32, i32, i32 }

@DRM_DP_SIDEBAND_TX_QUEUED = common dso_local global i64 0, align 8
@DRM_DP_SIDEBAND_TX_START_SEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"sideband msg failed to send\0A\00", align 1
@DRM_DP_SIDEBAND_TX_SENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*, i32)* @process_single_tx_qlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_single_tx_qlock(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_sideband_msg_tx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %6 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [48 x i32], align 16
  %9 = alloca %struct.drm_dp_sideband_msg_hdr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %5, align 8
  store %struct.drm_dp_sideband_msg_tx* %1, %struct.drm_dp_sideband_msg_tx** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = call i32 @memset(%struct.drm_dp_sideband_msg_hdr* %9, i32 0, i32 12)
  %16 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %17 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_DP_SIDEBAND_TX_QUEUED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %23 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 8
  %24 = load i64, i64* @DRM_DP_SIDEBAND_TX_START_SEND, align 8
  %25 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %26 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %3
  %28 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %29 = call i32 @set_hdr_from_dst_qlock(%struct.drm_dp_sideband_msg_hdr* %9, %struct.drm_dp_sideband_msg_tx* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %4, align 4
  br label %116

34:                                               ; preds = %27
  %35 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %36 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %39 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %10, align 4
  %42 = call i32 @drm_dp_calc_sb_hdr_size(%struct.drm_dp_sideband_msg_hdr* %9)
  %43 = sub nsw i32 47, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %49 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %9, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %34
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %9, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  %63 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %9, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  %65 = call i32 @drm_dp_encode_sideband_msg_hdr(%struct.drm_dp_sideband_msg_hdr* %9, i32* %64, i32* %12)
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 %67
  %69 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %70 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %73 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @memcpy(i32* %68, i32* %76, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 %80
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @drm_dp_crc_sideband_chunk_req(i32* %81, i32 %82)
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @drm_dp_send_sideband_msg(%struct.drm_dp_mst_topology_mgr* %88, i32 %89, i32* %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %60
  %96 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %4, align 4
  br label %116

98:                                               ; preds = %60
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %101 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %105 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %108 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load i64, i64* @DRM_DP_SIDEBAND_TX_SENT, align 8
  %113 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %6, align 8
  %114 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  store i32 1, i32* %4, align 4
  br label %116

115:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %111, %95, %32
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.drm_dp_sideband_msg_hdr*, i32, i32) #1

declare dso_local i32 @set_hdr_from_dst_qlock(%struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @drm_dp_calc_sb_hdr_size(%struct.drm_dp_sideband_msg_hdr*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @drm_dp_encode_sideband_msg_hdr(%struct.drm_dp_sideband_msg_hdr*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @drm_dp_crc_sideband_chunk_req(i32*, i32) #1

declare dso_local i32 @drm_dp_send_sideband_msg(%struct.drm_dp_mst_topology_mgr*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
