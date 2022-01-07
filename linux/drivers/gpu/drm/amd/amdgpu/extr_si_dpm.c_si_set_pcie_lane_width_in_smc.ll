; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_set_pcie_lane_width_in_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_set_pcie_lane_width_in_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ps = type { i32 }

@ATOM_PPLIB_PCIE_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*)* @si_set_pcie_lane_width_in_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_set_pcie_lane_width_in_smc(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1, %struct.amdgpu_ps* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ps*, align 8
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %5, align 8
  store %struct.amdgpu_ps* %2, %struct.amdgpu_ps** %6, align 8
  %10 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATOM_PPLIB_PCIE_LINK_WIDTH_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATOM_PPLIB_PCIE_LINK_WIDTH_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ATOM_PPLIB_PCIE_LINK_WIDTH_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @amdgpu_set_pcie_lanes(%struct.amdgpu_device* %32, i64 %33)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = call i64 @amdgpu_get_pcie_lanes(%struct.amdgpu_device* %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = load i32, i32* @SI_SMC_SOFT_REGISTER_non_ulv_pcie_link_width, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %37, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %31, %3
  ret void
}

declare dso_local i32 @amdgpu_set_pcie_lanes(%struct.amdgpu_device*, i64) #1

declare dso_local i64 @amdgpu_get_pcie_lanes(%struct.amdgpu_device*) #1

declare dso_local i32 @si_write_smc_soft_register(%struct.amdgpu_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
