; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_process_single_up_tx_qlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_process_single_up_tx_qlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_sideband_msg_tx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }

@.str = private unnamed_addr constant [28 x i8] c"failed to send msg in q %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*)* @process_single_up_tx_qlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_single_up_tx_qlock(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_sideband_msg_tx* %1) #0 {
  %3 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %4 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %3, align 8
  store %struct.drm_dp_sideband_msg_tx* %1, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %6 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %7 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %8 = call i32 @process_single_tx_qlock(%struct.drm_dp_mst_topology_mgr* %6, %struct.drm_dp_sideband_msg_tx* %7, i32 1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %16 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %21 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %24 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = call i32 @ARRAY_SIZE(i32** %27)
  %29 = icmp ugt i32 %22, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %33 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %38 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %36, i64 %40
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @process_single_tx_qlock(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
