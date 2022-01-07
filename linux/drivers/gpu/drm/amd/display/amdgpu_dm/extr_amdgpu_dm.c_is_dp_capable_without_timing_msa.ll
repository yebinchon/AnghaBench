; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_is_dp_capable_without_timing_msa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_is_dp_capable_without_timing_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.amdgpu_dm_connector = type { i64 }

@DP_DOWN_STREAM_PORT_COUNT = common dso_local global i32 0, align 4
@DP_MSA_TIMING_PAR_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, %struct.amdgpu_dm_connector*)* @is_dp_capable_without_timing_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dp_capable_without_timing_msa(%struct.dc* %0, %struct.amdgpu_dm_connector* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.amdgpu_dm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.amdgpu_dm_connector* %1, %struct.amdgpu_dm_connector** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @DP_DOWN_STREAM_PORT_COUNT, align 4
  %16 = call i64 @dm_helpers_dp_read_dpcd(i32* null, i64 %14, i32 %15, i32* %5, i32 4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DP_MSA_TIMING_PAR_IGNORED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %11, %2
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i64 @dm_helpers_dp_read_dpcd(i32*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
