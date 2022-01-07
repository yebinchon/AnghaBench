; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_clk_information_by_clkid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_clk_information_by_clkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.atom_get_smu_clock_info_parameters_v3_1 = type { i64, i32, i8*, i8* }
%struct.atom_get_smu_clock_info_output_parameters_v3_1 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ = common dso_local global i32 0, align 4
@getsmuclockinfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_atomfwctrl_get_clk_information_by_clkid(%struct.pp_hwmgr* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 8
  %12 = alloca %struct.atom_get_smu_clock_info_output_parameters_v3_1*, align 8
  %13 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %11, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %11, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @GET_SMU_CLOCK_INFO_V3_1_GET_CLOCK_FREQ, align 4
  %22 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %11, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %11, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @getsmuclockinfo, align 4
  %25 = call i32 @GetIndexIntoMasterCmdTable(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %11 to i32*
  %32 = call i64 @amdgpu_atom_execute_table(i32 %29, i32 %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %46

37:                                               ; preds = %4
  %38 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %11 to %struct.atom_get_smu_clock_info_output_parameters_v3_1*
  store %struct.atom_get_smu_clock_info_output_parameters_v3_1* %38, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %12, align 8
  %39 = load %struct.atom_get_smu_clock_info_output_parameters_v3_1*, %struct.atom_get_smu_clock_info_output_parameters_v3_1** %12, align 8
  %40 = getelementptr inbounds %struct.atom_get_smu_clock_info_output_parameters_v3_1, %struct.atom_get_smu_clock_info_output_parameters_v3_1* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = sdiv i32 %43, 10000
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %37, %34
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @GetIndexIntoMasterCmdTable(i32) #1

declare dso_local i64 @amdgpu_atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
