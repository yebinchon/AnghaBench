; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_send_power_updown_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_send_power_updown_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_port = type { i32, i32 }
%struct.drm_dp_sideband_msg_tx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DP_SIDEBAND_REPLY_NAK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_send_power_updown_phy(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %6 = alloca %struct.drm_dp_mst_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %5, align 8
  store %struct.drm_dp_mst_port* %1, %struct.drm_dp_mst_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %12 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %6, align 8
  %13 = call %struct.drm_dp_mst_port* @drm_dp_mst_topology_get_port_validated(%struct.drm_dp_mst_topology_mgr* %11, %struct.drm_dp_mst_port* %12)
  store %struct.drm_dp_mst_port* %13, %struct.drm_dp_mst_port** %6, align 8
  %14 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %6, align 8
  %15 = icmp ne %struct.drm_dp_mst_port* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %69

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.drm_dp_sideband_msg_tx* @kzalloc(i32 16, i32 %20)
  store %struct.drm_dp_sideband_msg_tx* %21, %struct.drm_dp_sideband_msg_tx** %8, align 8
  %22 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %8, align 8
  %23 = icmp ne %struct.drm_dp_sideband_msg_tx* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %6, align 8
  %26 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %69

29:                                               ; preds = %19
  %30 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %6, align 8
  %31 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %8, align 8
  %34 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %8, align 8
  %36 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %6, align 8
  %37 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @build_power_updown_phy(%struct.drm_dp_sideband_msg_tx* %35, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %42 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %8, align 8
  %43 = call i32 @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr* %41, %struct.drm_dp_sideband_msg_tx* %42)
  %44 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %6, align 8
  %45 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %8, align 8
  %48 = call i32 @drm_dp_mst_wait_tx_reply(i32 %46, %struct.drm_dp_sideband_msg_tx* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %29
  %52 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %8, align 8
  %53 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DP_SIDEBAND_REPLY_NAK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %62

61:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %58
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %8, align 8
  %65 = call i32 @kfree(%struct.drm_dp_sideband_msg_tx* %64)
  %66 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %6, align 8
  %67 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %24, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.drm_dp_mst_port* @drm_dp_mst_topology_get_port_validated(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*) #1

declare dso_local %struct.drm_dp_sideband_msg_tx* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port*) #1

declare dso_local i32 @build_power_updown_phy(%struct.drm_dp_sideband_msg_tx*, i32, i32) #1

declare dso_local i32 @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @drm_dp_mst_wait_tx_reply(i32, %struct.drm_dp_sideband_msg_tx*) #1

declare dso_local i32 @kfree(%struct.drm_dp_sideband_msg_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
