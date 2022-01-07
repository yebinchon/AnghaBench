; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_handle_edid_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_handle_edid_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_dm_connector = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dc_link = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i64 0, align 8
@LANE_COUNT_FOUR = common dso_local global i32 0, align 4
@LINK_RATE_HIGH2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_dm_connector*)* @handle_edid_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_edid_mgmt(%struct.amdgpu_dm_connector* %0) #0 {
  %2 = alloca %struct.amdgpu_dm_connector*, align 8
  %3 = alloca %struct.dc_link*, align 8
  store %struct.amdgpu_dm_connector* %0, %struct.amdgpu_dm_connector** %2, align 8
  %4 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.dc_link*
  store %struct.dc_link* %7, %struct.dc_link** %3, align 8
  %8 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %9 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SIGNAL_TYPE_DISPLAY_PORT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @LANE_COUNT_FOUR, align 4
  %15 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @LINK_RATE_HIGH2, align 4
  %19 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %20 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %2, align 8
  %27 = call i32 @create_eml_sink(%struct.amdgpu_dm_connector* %26)
  ret void
}

declare dso_local i32 @create_eml_sink(%struct.amdgpu_dm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
