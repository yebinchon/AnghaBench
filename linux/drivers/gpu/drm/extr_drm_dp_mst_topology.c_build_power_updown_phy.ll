; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_build_power_updown_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_build_power_updown_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_tx = type { i32 }
%struct.drm_dp_sideband_msg_req_body = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DP_POWER_UP_PHY = common dso_local global i32 0, align 4
@DP_POWER_DOWN_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_tx*, i32, i32)* @build_power_updown_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_power_updown_phy(%struct.drm_dp_sideband_msg_tx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_dp_sideband_msg_req_body, align 4
  store %struct.drm_dp_sideband_msg_tx* %0, %struct.drm_dp_sideband_msg_tx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @DP_POWER_UP_PHY, align 4
  %12 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  br label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @DP_POWER_DOWN_PHY, align 4
  %15 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %7, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %7, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %22 = call i32 @drm_dp_encode_sideband_req(%struct.drm_dp_sideband_msg_req_body* %7, %struct.drm_dp_sideband_msg_tx* %21)
  %23 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %24 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  ret i32 0
}

declare dso_local i32 @drm_dp_encode_sideband_req(%struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
