; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_gpu_pll_dividers_vega10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomfwctrl.c_pp_atomfwctrl_get_gpu_pll_dividers_vega10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pp_atomfwctrl_clock_dividers_soc15 = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.compute_gpu_clock_input_parameter_v1_8 = type { i8*, i8* }
%struct.compute_gpu_clock_output_parameter_v1_8 = type { i32, i32, i32, i32, i32, i32 }

@computegpuclockparam = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_atomfwctrl_get_gpu_pll_dividers_vega10(%struct.pp_hwmgr* %0, i8* %1, i8* %2, %struct.pp_atomfwctrl_clock_dividers_soc15* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pp_atomfwctrl_clock_dividers_soc15*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.compute_gpu_clock_input_parameter_v1_8, align 8
  %12 = alloca %struct.compute_gpu_clock_output_parameter_v1_8*, align 8
  %13 = alloca i8*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.pp_atomfwctrl_clock_dividers_soc15* %3, %struct.pp_atomfwctrl_clock_dividers_soc15** %9, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.compute_gpu_clock_input_parameter_v1_8, %struct.compute_gpu_clock_input_parameter_v1_8* %11, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.compute_gpu_clock_input_parameter_v1_8, %struct.compute_gpu_clock_input_parameter_v1_8* %11, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @computegpuclockparam, align 4
  %22 = call i8* @GetIndexIntoMasterCmdTable(i32 %21)
  store i8* %22, i8** %13, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = bitcast %struct.compute_gpu_clock_input_parameter_v1_8* %11 to i8**
  %29 = call i64 @amdgpu_atom_execute_table(i32 %26, i8* %27, i8** %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %71

34:                                               ; preds = %4
  %35 = bitcast %struct.compute_gpu_clock_input_parameter_v1_8* %11 to %struct.compute_gpu_clock_output_parameter_v1_8*
  store %struct.compute_gpu_clock_output_parameter_v1_8* %35, %struct.compute_gpu_clock_output_parameter_v1_8** %12, align 8
  %36 = load %struct.compute_gpu_clock_output_parameter_v1_8*, %struct.compute_gpu_clock_output_parameter_v1_8** %12, align 8
  %37 = getelementptr inbounds %struct.compute_gpu_clock_output_parameter_v1_8, %struct.compute_gpu_clock_output_parameter_v1_8* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le32_to_cpu(i32 %38)
  %40 = load %struct.pp_atomfwctrl_clock_dividers_soc15*, %struct.pp_atomfwctrl_clock_dividers_soc15** %9, align 8
  %41 = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, %struct.pp_atomfwctrl_clock_dividers_soc15* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.compute_gpu_clock_output_parameter_v1_8*, %struct.compute_gpu_clock_output_parameter_v1_8** %12, align 8
  %43 = getelementptr inbounds %struct.compute_gpu_clock_output_parameter_v1_8, %struct.compute_gpu_clock_output_parameter_v1_8* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.pp_atomfwctrl_clock_dividers_soc15*, %struct.pp_atomfwctrl_clock_dividers_soc15** %9, align 8
  %47 = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, %struct.pp_atomfwctrl_clock_dividers_soc15* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.compute_gpu_clock_output_parameter_v1_8*, %struct.compute_gpu_clock_output_parameter_v1_8** %12, align 8
  %49 = getelementptr inbounds %struct.compute_gpu_clock_output_parameter_v1_8, %struct.compute_gpu_clock_output_parameter_v1_8* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = load %struct.pp_atomfwctrl_clock_dividers_soc15*, %struct.pp_atomfwctrl_clock_dividers_soc15** %9, align 8
  %53 = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, %struct.pp_atomfwctrl_clock_dividers_soc15* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.compute_gpu_clock_output_parameter_v1_8*, %struct.compute_gpu_clock_output_parameter_v1_8** %12, align 8
  %55 = getelementptr inbounds %struct.compute_gpu_clock_output_parameter_v1_8, %struct.compute_gpu_clock_output_parameter_v1_8* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = load %struct.pp_atomfwctrl_clock_dividers_soc15*, %struct.pp_atomfwctrl_clock_dividers_soc15** %9, align 8
  %59 = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, %struct.pp_atomfwctrl_clock_dividers_soc15* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.compute_gpu_clock_output_parameter_v1_8*, %struct.compute_gpu_clock_output_parameter_v1_8** %12, align 8
  %61 = getelementptr inbounds %struct.compute_gpu_clock_output_parameter_v1_8, %struct.compute_gpu_clock_output_parameter_v1_8* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = load %struct.pp_atomfwctrl_clock_dividers_soc15*, %struct.pp_atomfwctrl_clock_dividers_soc15** %9, align 8
  %65 = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, %struct.pp_atomfwctrl_clock_dividers_soc15* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.compute_gpu_clock_output_parameter_v1_8*, %struct.compute_gpu_clock_output_parameter_v1_8** %12, align 8
  %67 = getelementptr inbounds %struct.compute_gpu_clock_output_parameter_v1_8, %struct.compute_gpu_clock_output_parameter_v1_8* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pp_atomfwctrl_clock_dividers_soc15*, %struct.pp_atomfwctrl_clock_dividers_soc15** %9, align 8
  %70 = getelementptr inbounds %struct.pp_atomfwctrl_clock_dividers_soc15, %struct.pp_atomfwctrl_clock_dividers_soc15* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %34, %31
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i8* @GetIndexIntoMasterCmdTable(i32) #1

declare dso_local i64 @amdgpu_atom_execute_table(i32, i8*, i8**) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
