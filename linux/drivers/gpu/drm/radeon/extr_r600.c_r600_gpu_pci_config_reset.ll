; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_gpu_pci_config_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_gpu_pci_config_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i64, i32, i32 }
%struct.rv515_mc_save = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"GPU pci config reset\0A\00", align 1
@CHIP_RV770 = common dso_local global i64 0, align 8
@R_0086D8_CP_ME_CNTL = common dso_local global i32 0, align 4
@RLC_CNTL = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@BUS_CNTL = common dso_local global i32 0, align 4
@VGA_COHE_SPEC_TIMER_DIS = common dso_local global i64 0, align 8
@BIF_SCRATCH0 = common dso_local global i32 0, align 4
@SOFT_RESET_BIF = common dso_local global i64 0, align 8
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@CONFIG_MEMSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r600_gpu_pci_config_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_gpu_pci_config_reset(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv515_mc_save, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHIP_RV770, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @R_0086D8_CP_ME_CNTL, align 4
  %17 = call i64 @S_0086D8_CP_ME_HALT(i32 1)
  %18 = call i64 @S_0086D8_CP_PFP_HALT(i32 1)
  %19 = or i64 %17, %18
  %20 = call i32 @WREG32(i32 %16, i64 %19)
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @R_0086D8_CP_ME_CNTL, align 4
  %23 = call i64 @S_0086D8_CP_ME_HALT(i32 1)
  %24 = call i32 @WREG32(i32 %22, i64 %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* @RLC_CNTL, align 4
  %27 = call i32 @WREG32(i32 %26, i64 0)
  %28 = load i32, i32* @DMA_RB_CNTL, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* @DMA_RB_ENABLE, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %4, align 8
  %35 = load i32, i32* @DMA_RB_CNTL, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @WREG32(i32 %35, i64 %36)
  %38 = call i32 @mdelay(i32 50)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_RV770, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i32 @rv770_set_clk_bypass_mode(%struct.radeon_device* %45)
  br label %47

47:                                               ; preds = %44, %25
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pci_clear_master(i32 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = call i32 @rv515_mc_stop(%struct.radeon_device* %52, %struct.rv515_mc_save* %3)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = call i64 @r600_mc_wait_for_idle(%struct.radeon_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %47
  %63 = load i32, i32* @BUS_CNTL, align 4
  %64 = call i32 @RREG32(i32 %63)
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* @VGA_COHE_SPEC_TIMER_DIS, align 8
  %67 = load i64, i64* %4, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %4, align 8
  %69 = load i32, i32* @BUS_CNTL, align 4
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @WREG32(i32 %69, i64 %70)
  %72 = load i32, i32* @BIF_SCRATCH0, align 4
  %73 = call i32 @RREG32(i32 %72)
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %4, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = call i32 @radeon_pci_config_reset(%struct.radeon_device* %75)
  %77 = call i32 @mdelay(i32 1)
  %78 = load i64, i64* @SOFT_RESET_BIF, align 8
  store i64 %78, i64* %4, align 8
  %79 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @WREG32(i32 %79, i64 %80)
  %82 = call i32 @mdelay(i32 1)
  %83 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %84 = call i32 @WREG32(i32 %83, i64 0)
  store i64 0, i64* %5, align 8
  br label %85

85:                                               ; preds = %98, %62
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %93 = call i32 @RREG32(i32 %92)
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %101

96:                                               ; preds = %91
  %97 = call i32 @udelay(i32 1)
  br label %98

98:                                               ; preds = %96
  %99 = load i64, i64* %5, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %5, align 8
  br label %85

101:                                              ; preds = %95, %85
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i64 @S_0086D8_CP_ME_HALT(i32) #1

declare dso_local i64 @S_0086D8_CP_PFP_HALT(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rv770_set_clk_bypass_mode(%struct.radeon_device*) #1

declare dso_local i32 @pci_clear_master(i32) #1

declare dso_local i32 @rv515_mc_stop(%struct.radeon_device*, %struct.rv515_mc_save*) #1

declare dso_local i64 @r600_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @radeon_pci_config_reset(%struct.radeon_device*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
