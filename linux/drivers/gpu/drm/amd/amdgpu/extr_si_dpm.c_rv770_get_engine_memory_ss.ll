; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_rv770_get_engine_memory_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_rv770_get_engine_memory_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.rv7xx_power_info = type { i32, i8*, i8* }
%struct.amdgpu_atom_ss = type { i32 }

@ASIC_INTERNAL_ENGINE_SS = common dso_local global i32 0, align 4
@ASIC_INTERNAL_MEMORY_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @rv770_get_engine_memory_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_get_engine_memory_ss(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca %struct.amdgpu_atom_ss, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device* %5)
  store %struct.rv7xx_power_info* %6, %struct.rv7xx_power_info** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @ASIC_INTERNAL_ENGINE_SS, align 4
  %9 = call i8* @amdgpu_atombios_get_asic_ss_info(%struct.amdgpu_device* %7, %struct.amdgpu_atom_ss* %4, i32 %8, i32 0)
  %10 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %11 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = load i32, i32* @ASIC_INTERNAL_MEMORY_SS, align 4
  %14 = call i8* @amdgpu_atombios_get_asic_ss_info(%struct.amdgpu_device* %12, %struct.amdgpu_atom_ss* %4, i32 %13, i32 0)
  %15 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %16 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %18 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %1
  %27 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %28 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %32

29:                                               ; preds = %21
  %30 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %31 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device*) #1

declare dso_local i8* @amdgpu_atombios_get_asic_ss_info(%struct.amdgpu_device*, %struct.amdgpu_atom_ss*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
