; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_send_dpcd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_send_dpcd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_port = type { i32, i32 }
%struct.drm_dp_sideband_msg_tx = type { %struct.TYPE_2__, %struct.drm_dp_mst_branch* }
%struct.TYPE_2__ = type { i64 }
%struct.drm_dp_mst_branch = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DP_SIDEBAND_REPLY_NAK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*, i32, i32, i32*)* @drm_dp_send_dpcd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_send_dpcd_write(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_port* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %8 = alloca %struct.drm_dp_mst_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %15 = alloca %struct.drm_dp_mst_branch*, align 8
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %7, align 8
  store %struct.drm_dp_mst_port* %1, %struct.drm_dp_mst_port** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %7, align 8
  %17 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %8, align 8
  %18 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_dp_mst_branch* @drm_dp_mst_topology_get_mstb_validated(%struct.drm_dp_mst_topology_mgr* %16, i32 %19)
  store %struct.drm_dp_mst_branch* %20, %struct.drm_dp_mst_branch** %15, align 8
  %21 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %15, align 8
  %22 = icmp ne %struct.drm_dp_mst_branch* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %73

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.drm_dp_sideband_msg_tx* @kzalloc(i32 16, i32 %27)
  store %struct.drm_dp_sideband_msg_tx* %28, %struct.drm_dp_sideband_msg_tx** %14, align 8
  %29 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %14, align 8
  %30 = icmp ne %struct.drm_dp_sideband_msg_tx* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  br label %69

34:                                               ; preds = %26
  %35 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %14, align 8
  %36 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %8, align 8
  %37 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @build_dpcd_write(%struct.drm_dp_sideband_msg_tx* %35, i32 %38, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %15, align 8
  %44 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %14, align 8
  %45 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %44, i32 0, i32 1
  store %struct.drm_dp_mst_branch* %43, %struct.drm_dp_mst_branch** %45, align 8
  %46 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %7, align 8
  %47 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %14, align 8
  %48 = call i32 @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr* %46, %struct.drm_dp_sideband_msg_tx* %47)
  %49 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %15, align 8
  %50 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %14, align 8
  %51 = call i32 @drm_dp_mst_wait_tx_reply(%struct.drm_dp_mst_branch* %49, %struct.drm_dp_sideband_msg_tx* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %34
  %55 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %14, align 8
  %56 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DP_SIDEBAND_REPLY_NAK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %66

66:                                               ; preds = %65, %34
  %67 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %14, align 8
  %68 = call i32 @kfree(%struct.drm_dp_sideband_msg_tx* %67)
  br label %69

69:                                               ; preds = %66, %31
  %70 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %15, align 8
  %71 = call i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %23
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.drm_dp_mst_branch* @drm_dp_mst_topology_get_mstb_validated(%struct.drm_dp_mst_topology_mgr*, i32) #1

declare dso_local %struct.drm_dp_sideband_msg_tx* @kzalloc(i32, i32) #1

declare dso_local i32 @build_dpcd_write(%struct.drm_dp_sideband_msg_tx*, i32, i32, i32, i32*) #1

declare dso_local i32 @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @drm_dp_mst_wait_tx_reply(%struct.drm_dp_mst_branch*, %struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @kfree(%struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @drm_dp_mst_topology_put_mstb(%struct.drm_dp_mst_branch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
