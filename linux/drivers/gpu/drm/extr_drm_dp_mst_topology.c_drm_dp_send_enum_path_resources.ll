; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_send_enum_path_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_send_enum_path_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_branch = type { i32 }
%struct.drm_dp_mst_port = type { i64, i32 }
%struct.drm_dp_sideband_msg_tx = type { %struct.TYPE_6__, %struct.drm_dp_mst_branch* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DP_SIDEBAND_REPLY_NAK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"enum path resources nak received\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"got incorrect port in response\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"enum path resources %d: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_port*)* @drm_dp_send_enum_path_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_send_enum_path_resources(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_branch* %1, %struct.drm_dp_mst_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %6 = alloca %struct.drm_dp_mst_branch*, align 8
  %7 = alloca %struct.drm_dp_mst_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %5, align 8
  store %struct.drm_dp_mst_branch* %1, %struct.drm_dp_mst_branch** %6, align 8
  store %struct.drm_dp_mst_port* %2, %struct.drm_dp_mst_port** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.drm_dp_sideband_msg_tx* @kzalloc(i32 32, i32 %11)
  store %struct.drm_dp_sideband_msg_tx* %12, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %13 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %14 = icmp ne %struct.drm_dp_sideband_msg_tx* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %20 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %21 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %20, i32 0, i32 1
  store %struct.drm_dp_mst_branch* %19, %struct.drm_dp_mst_branch** %21, align 8
  %22 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %23 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %24 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @build_enum_path_resources(%struct.drm_dp_sideband_msg_tx* %22, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %28 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %29 = call i32 @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr* %27, %struct.drm_dp_sideband_msg_tx* %28)
  %30 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %6, align 8
  %31 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %32 = call i32 @drm_dp_mst_wait_tx_reply(%struct.drm_dp_mst_branch* %30, %struct.drm_dp_sideband_msg_tx* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %18
  %36 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %37 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DP_SIDEBAND_REPLY_NAK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %85

44:                                               ; preds = %35
  %45 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %46 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %49 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %47, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %44
  %58 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %59 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %65 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %71 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %63, i32 %69, i32 %75)
  %77 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %78 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %84 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %57, %42
  br label %86

86:                                               ; preds = %85, %18
  %87 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %9, align 8
  %88 = call i32 @kfree(%struct.drm_dp_sideband_msg_tx* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %15
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.drm_dp_sideband_msg_tx* @kzalloc(i32, i32) #1

declare dso_local i32 @build_enum_path_resources(%struct.drm_dp_sideband_msg_tx*, i64) #1

declare dso_local i32 @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @drm_dp_mst_wait_tx_reply(%struct.drm_dp_mst_branch*, %struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kfree(%struct.drm_dp_sideband_msg_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
