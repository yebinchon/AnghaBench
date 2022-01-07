; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_mst_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_mst_types.c_dm_dp_mst_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.amdgpu_dm_connector = type { i32, i32, %struct.amdgpu_dm_connector* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @dm_dp_mst_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_dp_mst_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_dm_connector*, align 8
  %6 = alloca %struct.amdgpu_dm_connector*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %8)
  store %struct.amdgpu_dm_connector* %9, %struct.amdgpu_dm_connector** %5, align 8
  %10 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %10, i32 0, i32 2
  %12 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %11, align 8
  store %struct.amdgpu_dm_connector* %12, %struct.amdgpu_dm_connector** %6, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %14 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %15 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %14, i32 0, i32 1
  %16 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @drm_dp_mst_detect_port(%struct.drm_connector* %13, i32* %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  ret i32 %20
}

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_mst_detect_port(%struct.drm_connector*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
