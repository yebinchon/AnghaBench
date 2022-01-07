; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_program_nbps_index_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_program_nbps_index_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64 }
%struct.amdgpu_ps = type { i32 }
%struct.kv_ps = type { i32, i32, i32, i32 }
%struct.kv_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@ixNB_DPM_CONFIG_1 = common dso_local global i32 0, align 4
@NB_DPM_CONFIG_1__Dpm0PgNbPsLo_MASK = common dso_local global i32 0, align 4
@NB_DPM_CONFIG_1__Dpm0PgNbPsHi_MASK = common dso_local global i32 0, align 4
@NB_DPM_CONFIG_1__DpmXNbPsLo_MASK = common dso_local global i32 0, align 4
@NB_DPM_CONFIG_1__DpmXNbPsHi_MASK = common dso_local global i32 0, align 4
@NB_DPM_CONFIG_1__Dpm0PgNbPsLo__SHIFT = common dso_local global i32 0, align 4
@NB_DPM_CONFIG_1__Dpm0PgNbPsHi__SHIFT = common dso_local global i32 0, align 4
@NB_DPM_CONFIG_1__DpmXNbPsLo__SHIFT = common dso_local global i32 0, align 4
@NB_DPM_CONFIG_1__DpmXNbPsHi__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ps*)* @kv_program_nbps_index_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_program_nbps_index_settings(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ps*, align 8
  %5 = alloca %struct.kv_ps*, align 8
  %6 = alloca %struct.kv_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %4, align 8
  %8 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %9 = call %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps* %8)
  store %struct.kv_ps* %9, %struct.kv_ps** %5, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %10)
  store %struct.kv_power_info* %11, %struct.kv_power_info** %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHIP_KABINI, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_MULLINS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %2
  br label %71

24:                                               ; preds = %17
  %25 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %26 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = load i32, i32* @ixNB_DPM_CONFIG_1, align 4
  %32 = call i32 @RREG32_SMC(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @NB_DPM_CONFIG_1__Dpm0PgNbPsLo_MASK, align 4
  %34 = load i32, i32* @NB_DPM_CONFIG_1__Dpm0PgNbPsHi_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NB_DPM_CONFIG_1__DpmXNbPsLo_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NB_DPM_CONFIG_1__DpmXNbPsHi_MASK, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %44 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NB_DPM_CONFIG_1__Dpm0PgNbPsLo__SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %49 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NB_DPM_CONFIG_1__Dpm0PgNbPsHi__SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %47, %52
  %54 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %55 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NB_DPM_CONFIG_1__DpmXNbPsLo__SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %53, %58
  %60 = load %struct.kv_ps*, %struct.kv_ps** %5, align 8
  %61 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NB_DPM_CONFIG_1__DpmXNbPsHi__SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %59, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @ixNB_DPM_CONFIG_1, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @WREG32_SMC(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %23, %30, %24
  ret void
}

declare dso_local %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps*) #1

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
