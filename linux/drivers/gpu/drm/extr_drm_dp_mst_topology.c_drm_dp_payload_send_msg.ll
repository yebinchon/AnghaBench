; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_payload_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_payload_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_port = type { i32, i32, i32 }
%struct.drm_dp_sideband_msg_tx = type { %struct.TYPE_2__, %struct.drm_dp_mst_branch* }
%struct.TYPE_2__ = type { i64 }
%struct.drm_dp_mst_branch = type { i32 }

@DRM_DP_MAX_SDP_STREAMS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DP_SIDEBAND_REPLY_NAK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*, i32, i32)* @drm_dp_payload_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_payload_send_msg(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_port* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %7 = alloca %struct.drm_dp_mst_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %11 = alloca %struct.drm_dp_mst_branch*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %6, align 8
  store %struct.drm_dp_mst_port* %1, %struct.drm_dp_mst_port** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @DRM_DP_MAX_SDP_STREAMS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %24 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %27 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %28 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.drm_dp_mst_branch* @drm_dp_mst_topology_get_mstb_validated(%struct.drm_dp_mst_topology_mgr* %26, i32 %29)
  store %struct.drm_dp_mst_branch* %30, %struct.drm_dp_mst_branch** %11, align 8
  %31 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %11, align 8
  %32 = icmp ne %struct.drm_dp_mst_branch* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %4
  %34 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %35 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %36 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.drm_dp_mst_branch* @drm_dp_get_last_connected_port_and_mstb(%struct.drm_dp_mst_topology_mgr* %34, i32 %37, i32* %14)
  store %struct.drm_dp_mst_branch* %38, %struct.drm_dp_mst_branch** %11, align 8
  %39 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %11, align 8
  %40 = icmp ne %struct.drm_dp_mst_branch* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %107

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.drm_dp_sideband_msg_tx* @kzalloc(i32 16, i32 %46)
  store %struct.drm_dp_sideband_msg_tx* %47, %struct.drm_dp_sideband_msg_tx** %10, align 8
  %48 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %10, align 8
  %49 = icmp ne %struct.drm_dp_sideband_msg_tx* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %103

53:                                               ; preds = %45
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %65, %53
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %57 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %22, i64 %63
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %11, align 8
  %70 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %10, align 8
  %71 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %70, i32 0, i32 1
  store %struct.drm_dp_mst_branch* %69, %struct.drm_dp_mst_branch** %71, align 8
  %72 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %10, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %77 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @build_allocate_payload(%struct.drm_dp_sideband_msg_tx* %72, i32 %73, i32 %74, i32 %75, i32 %78, i32* %22)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %81 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %10, align 8
  %82 = call i32 @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr* %80, %struct.drm_dp_sideband_msg_tx* %81)
  %83 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %11, align 8
  %84 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %10, align 8
  %85 = call i32 @drm_dp_mst_wait_tx_reply(%struct.drm_dp_mst_branch* %83, %struct.drm_dp_sideband_msg_tx* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %68
  %89 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %10, align 8
  %90 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DP_SIDEBAND_REPLY_NAK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %13, align 4
  br label %99

98:                                               ; preds = %88
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %98, %95
  br label %100

100:                                              ; preds = %99, %68
  %101 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %10, align 8
  %102 = call i32 @kfree(%struct.drm_dp_sideband_msg_tx* %101)
  br label %103

103:                                              ; preds = %100, %50
  %104 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %11, align 8
  %105 = call i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch* %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %107

107:                                              ; preds = %103, %41
  %108 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.drm_dp_mst_branch* @drm_dp_mst_topology_get_mstb_validated(%struct.drm_dp_mst_topology_mgr*, i32) #2

declare dso_local %struct.drm_dp_mst_branch* @drm_dp_get_last_connected_port_and_mstb(%struct.drm_dp_mst_topology_mgr*, i32, i32*) #2

declare dso_local %struct.drm_dp_sideband_msg_tx* @kzalloc(i32, i32) #2

declare dso_local i32 @build_allocate_payload(%struct.drm_dp_sideband_msg_tx*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*) #2

declare dso_local i32 @drm_dp_mst_wait_tx_reply(%struct.drm_dp_mst_branch*, %struct.drm_dp_sideband_msg_tx*) #2

declare dso_local i32 @kfree(%struct.drm_dp_sideband_msg_tx*) #2

declare dso_local i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
