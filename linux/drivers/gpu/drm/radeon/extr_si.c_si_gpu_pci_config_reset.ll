; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_gpu_pci_config_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_gpu_pci_config_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, i32 }
%struct.evergreen_mc_save = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"GPU pci config reset\0A\00", align 1
@CP_ME_CNTL = common dso_local global i64 0, align 8
@CP_ME_HALT = common dso_local global i64 0, align 8
@CP_PFP_HALT = common dso_local global i64 0, align 8
@CP_CE_HALT = common dso_local global i64 0, align 8
@DMA_RB_CNTL = common dso_local global i64 0, align 8
@DMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@DMA_RB_ENABLE = common dso_local global i64 0, align 8
@DMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Wait for MC idle timed out !\0A\00", align 1
@CONFIG_MEMSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_gpu_pci_config_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_gpu_pci_config_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_mc_save, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = call i32 @si_fini_pg(%struct.radeon_device* %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call i32 @si_fini_cg(%struct.radeon_device* %12)
  %14 = load i64, i64* @CP_ME_CNTL, align 8
  %15 = load i64, i64* @CP_ME_HALT, align 8
  %16 = load i64, i64* @CP_PFP_HALT, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @CP_CE_HALT, align 8
  %19 = or i64 %17, %18
  %20 = call i32 @WREG32(i64 %14, i64 %19)
  %21 = load i64, i64* @DMA_RB_CNTL, align 8
  %22 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @RREG32(i64 %23)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* @DMA_RB_ENABLE, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* @DMA_RB_CNTL, align 8
  %31 = load i64, i64* @DMA0_REGISTER_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @WREG32(i64 %32, i64 %33)
  %35 = load i64, i64* @DMA_RB_CNTL, align 8
  %36 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @RREG32(i64 %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* @DMA_RB_ENABLE, align 8
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %4, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* @DMA_RB_CNTL, align 8
  %45 = load i64, i64* @DMA1_REGISTER_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @WREG32(i64 %46, i64 %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = call i32 @si_rlc_stop(%struct.radeon_device* %49)
  %51 = call i32 @udelay(i32 50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = call i32 @evergreen_mc_stop(%struct.radeon_device* %52, %struct.evergreen_mc_save* %3)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %1
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %1
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = call i32 @si_set_clk_bypass_mode(%struct.radeon_device* %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = call i32 @si_spll_powerdown(%struct.radeon_device* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pci_clear_master(i32 %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %72 = call i32 @radeon_pci_config_reset(%struct.radeon_device* %71)
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %86, %62
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i64, i64* @CONFIG_MEMSIZE, align 8
  %81 = call i32 @RREG32(i64 %80)
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %89

84:                                               ; preds = %79
  %85 = call i32 @udelay(i32 1)
  br label %86

86:                                               ; preds = %84
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %73

89:                                               ; preds = %83, %73
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @si_fini_pg(%struct.radeon_device*) #1

declare dso_local i32 @si_fini_cg(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @si_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @evergreen_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @si_set_clk_bypass_mode(%struct.radeon_device*) #1

declare dso_local i32 @si_spll_powerdown(%struct.radeon_device*) #1

declare dso_local i32 @pci_clear_master(i32) #1

declare dso_local i32 @radeon_pci_config_reset(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
