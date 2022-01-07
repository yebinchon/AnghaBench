; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_program_response_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_program_response_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@NI_SMC_SOFT_REGISTER_mvdd_chg_time = common dso_local global i32 0, align 4
@NI_SMC_SOFT_REGISTER_delay_vreg = common dso_local global i32 0, align 4
@NI_SMC_SOFT_REGISTER_delay_bbias = common dso_local global i32 0, align 4
@NI_SMC_SOFT_REGISTER_delay_acpi = common dso_local global i32 0, align 4
@NI_SMC_SOFT_REGISTER_mclk_chg_timeout = common dso_local global i32 0, align 4
@NI_SMC_SOFT_REGISTER_mc_block_delay = common dso_local global i32 0, align 4
@NI_SMC_SOFT_REGISTER_mclk_switch_lim = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @ni_program_response_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_program_response_times(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = load i32, i32* @NI_SMC_SOFT_REGISTER_mvdd_chg_time, align 4
  %15 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %13, i32 %14, i32 1)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 1000, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1000, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31
  store i32 15000, i32* %5, align 4
  store i32 100000, i32* %6, align 4
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i32 @radeon_get_xclk(%struct.radeon_device* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sdiv i32 %40, 1600
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %12, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sdiv i32 %44, 1600
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %12, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sdiv i32 %48, 1600
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sdiv i32 %52, 1600
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 460, %54
  %56 = sdiv i32 %55, 100
  store i32 %56, i32* %11, align 4
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = load i32, i32* @NI_SMC_SOFT_REGISTER_delay_vreg, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %57, i32 %58, i32 %59)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = load i32, i32* @NI_SMC_SOFT_REGISTER_delay_bbias, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %61, i32 %62, i32 %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = load i32, i32* @NI_SMC_SOFT_REGISTER_delay_acpi, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %65, i32 %66, i32 %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = load i32, i32* @NI_SMC_SOFT_REGISTER_mclk_chg_timeout, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %69, i32 %70, i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = load i32, i32* @NI_SMC_SOFT_REGISTER_mc_block_delay, align 4
  %75 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %73, i32 %74, i32 170)
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = load i32, i32* @NI_SMC_SOFT_REGISTER_mclk_switch_lim, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %76, i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @rv770_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
