; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_program_response_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_program_response_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RV770_SMC_SOFT_REGISTER_mclk_switch_lim = common dso_local global i32 0, align 4
@RV770_SMC_SOFT_REGISTER_mvdd_chg_time = common dso_local global i32 0, align 4
@RV770_SMC_SOFT_REGISTER_mc_block_delay = common dso_local global i32 0, align 4
@RV770_SMC_SOFT_REGISTER_is_asic_lombok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cypress_program_response_times(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i32 @radeon_get_xclk(%struct.radeon_device* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = mul nsw i32 460, %7
  %9 = sdiv i32 %8, 100
  store i32 %9, i32* %4, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = load i32, i32* @RV770_SMC_SOFT_REGISTER_mclk_switch_lim, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %10, i32 %11, i32 %12)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = load i32, i32* @RV770_SMC_SOFT_REGISTER_mvdd_chg_time, align 4
  %16 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %14, i32 %15, i32 1)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = load i32, i32* @RV770_SMC_SOFT_REGISTER_mc_block_delay, align 4
  %19 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %17, i32 %18, i32 170)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @rv770_program_response_times(%struct.radeon_device* %20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = call i64 @ASIC_IS_LOMBOK(%struct.radeon_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = load i32, i32* @RV770_SMC_SOFT_REGISTER_is_asic_lombok, align 4
  %28 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @radeon_get_xclk(%struct.radeon_device*) #1

declare dso_local i32 @rv770_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @rv770_program_response_times(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_LOMBOK(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
