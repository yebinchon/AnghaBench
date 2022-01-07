; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_enable_bif_dynamic_pcie_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_enable_bif_dynamic_pcie_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32 }

@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_EVER_SENT_GEN2 = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_SUPPORTS_GEN2 = common dso_local global i32 0, align 4
@CG_BIF_REQ_AND_RSP = common dso_local global i32 0, align 4
@CG_CLIENT_REQ_MASK = common dso_local global i32 0, align 4
@LC_HW_VOLTAGE_IF_CONTROL_MASK = common dso_local global i32 0, align 4
@LC_GEN2_EN_STRAP = common dso_local global i32 0, align 4
@LC_CLR_FAILED_SPD_CHANGE_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @ni_enable_bif_dynamic_pcie_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_enable_bif_dynamic_pcie_gen2(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %5, align 8
  %10 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %11 = call i32 @RREG32_PCIE_PORT(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @LC_OTHER_SIDE_EVER_SENT_GEN2, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %96

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @LC_OTHER_SIDE_SUPPORTS_GEN2, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %96

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %26 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @CG_BIF_REQ_AND_RSP, align 4
  %31 = call i32 @RREG32(i32 %30)
  %32 = load i32, i32* @CG_CLIENT_REQ_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %7, align 4
  %35 = call i32 @CG_CLIENT_REQ(i32 13)
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @CG_BIF_REQ_AND_RSP, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @WREG32(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %29, %24
  %42 = load i32, i32* @LC_HW_VOLTAGE_IF_CONTROL_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = call i32 @LC_HW_VOLTAGE_IF_CONTROL(i32 1)
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @LC_GEN2_EN_STRAP, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @LC_CLR_FAILED_SPD_CHANGE_CNT, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @WREG32_PCIE_PORT(i32 %55, i32 %56)
  %58 = call i32 @udelay(i32 10)
  %59 = load i32, i32* @LC_CLR_FAILED_SPD_CHANGE_CNT, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @WREG32_PCIE_PORT(i32 %63, i32 %64)
  br label %95

66:                                               ; preds = %21
  %67 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %68 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @CG_BIF_REQ_AND_RSP, align 4
  %73 = call i32 @RREG32(i32 %72)
  %74 = load i32, i32* @CG_CLIENT_REQ_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  store i32 %76, i32* %7, align 4
  %77 = call i32 @CG_CLIENT_REQ(i32 13)
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @CG_BIF_REQ_AND_RSP, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @WREG32(i32 %80, i32 %81)
  %83 = load i32, i32* @LC_HW_VOLTAGE_IF_CONTROL_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @LC_GEN2_EN_STRAP, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %71, %66
  %92 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @WREG32_PCIE_PORT(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %41
  br label %96

96:                                               ; preds = %95, %16, %2
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @CG_CLIENT_REQ(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @LC_HW_VOLTAGE_IF_CONTROL(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
