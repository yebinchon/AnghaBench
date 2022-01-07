; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_wait_tx_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_wait_tx_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_branch = type { i32**, %struct.drm_dp_mst_topology_mgr* }
%struct.drm_dp_mst_topology_mgr = type { i32, i32 }
%struct.drm_dp_sideband_msg_tx = type { i64, i64, i32 }

@HZ = common dso_local global i32 0, align 4
@DRM_DP_SIDEBAND_TX_TIMEOUT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"timedout msg send %p %d %d\0A\00", align 1
@DRM_DP_SIDEBAND_TX_QUEUED = common dso_local global i64 0, align 8
@DRM_DP_SIDEBAND_TX_START_SEND = common dso_local global i64 0, align 8
@DRM_DP_SIDEBAND_TX_SENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_branch*, %struct.drm_dp_sideband_msg_tx*)* @drm_dp_mst_wait_tx_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_mst_wait_tx_reply(%struct.drm_dp_mst_branch* %0, %struct.drm_dp_sideband_msg_tx* %1) #0 {
  %3 = alloca %struct.drm_dp_mst_branch*, align 8
  %4 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %5 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_dp_mst_branch* %0, %struct.drm_dp_mst_branch** %3, align 8
  store %struct.drm_dp_sideband_msg_tx* %1, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %7 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %8 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %7, i32 0, i32 1
  %9 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %8, align 8
  store %struct.drm_dp_mst_topology_mgr* %9, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %10 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %11 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %14 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %15 = call i32 @check_txmsg_state(%struct.drm_dp_mst_topology_mgr* %13, %struct.drm_dp_sideband_msg_tx* %14)
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 4, %16
  %18 = call i32 @wait_event_timeout(i32 %12, i32 %15, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %20 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %19, i32 0, i32 1
  %21 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %28 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DRM_DP_SIDEBAND_TX_TIMEOUT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %84

35:                                               ; preds = %26
  br label %83

36:                                               ; preds = %2
  %37 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %38 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %39 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %42 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.drm_dp_sideband_msg_tx* %37, i64 %40, i64 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %48 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DRM_DP_SIDEBAND_TX_QUEUED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %36
  %53 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %54 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DRM_DP_SIDEBAND_TX_START_SEND, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %36
  %59 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %60 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %59, i32 0, i32 2
  %61 = call i32 @list_del(i32* %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %64 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DRM_DP_SIDEBAND_TX_START_SEND, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %70 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DRM_DP_SIDEBAND_TX_SENT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68, %62
  %75 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %76 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %79 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %74, %68
  br label %83

83:                                               ; preds = %82, %35
  br label %84

84:                                               ; preds = %83, %32
  %85 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %86 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @check_txmsg_state(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, %struct.drm_dp_sideband_msg_tx*, i64, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
