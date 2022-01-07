; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_program_response_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_program_response_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SI_SMC_SOFT_REGISTER_mvdd_chg_time = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_delay_vreg = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_delay_acpi = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_mclk_chg_timeout = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_mc_block_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @si_program_response_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_program_response_times(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = load i32, i32* @SI_SMC_SOFT_REGISTER_mvdd_chg_time, align 4
  %12 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %10, i32 %11, i32 1)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1000, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %1
  store i32 15000, i32* %4, align 4
  store i32 100000, i32* %5, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sdiv i32 %27, 100
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %31, 100
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sdiv i32 %35, 100
  store i32 %36, i32* %8, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = load i32, i32* @SI_SMC_SOFT_REGISTER_delay_vreg, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %37, i32 %38, i32 %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = load i32, i32* @SI_SMC_SOFT_REGISTER_delay_acpi, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %41, i32 %42, i32 %43)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = load i32, i32* @SI_SMC_SOFT_REGISTER_mclk_chg_timeout, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %45, i32 %46, i32 %47)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = load i32, i32* @SI_SMC_SOFT_REGISTER_mc_block_delay, align 4
  %51 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %49, i32 %50, i32 170)
  ret void
}

declare dso_local i32 @si_write_smc_soft_register(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
