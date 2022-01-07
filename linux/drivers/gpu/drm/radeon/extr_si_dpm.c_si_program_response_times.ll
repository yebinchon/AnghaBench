; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_response_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_response_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@SI_SMC_SOFT_REGISTER_mvdd_chg_time = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_delay_vreg = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_delay_acpi = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_mclk_chg_timeout = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_mc_block_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_program_response_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_program_response_times(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = load i32, i32* @SI_SMC_SOFT_REGISTER_mvdd_chg_time, align 4
  %13 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %11, i32 %12, i32 1)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1000, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %1
  store i32 15000, i32* %5, align 4
  store i32 100000, i32* %6, align 4
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = call i32 @radeon_get_xclk(%struct.radeon_device* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %34, 100
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sdiv i32 %38, 100
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %42, 100
  store i32 %43, i32* %9, align 4
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = load i32, i32* @SI_SMC_SOFT_REGISTER_delay_vreg, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %44, i32 %45, i32 %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = load i32, i32* @SI_SMC_SOFT_REGISTER_delay_acpi, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %48, i32 %49, i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = load i32, i32* @SI_SMC_SOFT_REGISTER_mclk_chg_timeout, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %52, i32 %53, i32 %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = load i32, i32* @SI_SMC_SOFT_REGISTER_mc_block_delay, align 4
  %58 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %56, i32 %57, i32 170)
  ret void
}

declare dso_local i32 @si_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
