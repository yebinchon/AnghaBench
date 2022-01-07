; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_gpu_pci_config_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_gpu_pci_config_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, i32 }
%struct.evergreen_mc_save = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"GPU pci config reset\0A\00", align 1
@CP_ME_CNTL = common dso_local global i32 0, align 4
@CP_ME_HALT = common dso_local global i64 0, align 8
@CP_PFP_HALT = common dso_local global i64 0, align 8
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Wait for MC idle timed out !\0A\00", align 1
@CONFIG_MEMSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_gpu_pci_config_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_mc_save, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @CP_ME_CNTL, align 4
  %11 = load i64, i64* @CP_ME_HALT, align 8
  %12 = load i64, i64* @CP_PFP_HALT, align 8
  %13 = or i64 %11, %12
  %14 = call i32 @WREG32(i32 %10, i64 %13)
  %15 = call i32 @udelay(i32 50)
  %16 = load i32, i32* @DMA_RB_CNTL, align 4
  %17 = call i32 @RREG32(i32 %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* @DMA_RB_ENABLE, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* @DMA_RB_CNTL, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @WREG32(i32 %23, i64 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = call i32 @r600_rlc_stop(%struct.radeon_device* %26)
  %28 = call i32 @udelay(i32 50)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = call i32 @rv770_set_clk_bypass_mode(%struct.radeon_device* %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_clear_master(i32 %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = call i32 @evergreen_mc_stop(%struct.radeon_device* %35, %struct.evergreen_mc_save* %3)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = call i32 @radeon_pci_config_reset(%struct.radeon_device* %46)
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %61, %45
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %56 = call i32 @RREG32(i32 %55)
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %54
  %60 = call i32 @udelay(i32 1)
  br label %61

61:                                               ; preds = %59
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %48

64:                                               ; preds = %58, %48
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @r600_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @rv770_set_clk_bypass_mode(%struct.radeon_device*) #1

declare dso_local i32 @pci_clear_master(i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @evergreen_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @radeon_pci_config_reset(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
