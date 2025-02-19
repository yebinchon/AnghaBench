; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_enable_bif_dynamic_pcie_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_enable_bif_dynamic_pcie_gen2.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cypress_enable_bif_dynamic_pcie_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_enable_bif_dynamic_pcie_gen2(%struct.radeon_device* %0, i32 %1) #0 {
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
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @LC_OTHER_SIDE_EVER_SENT_GEN2, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @LC_OTHER_SIDE_SUPPORTS_GEN2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %19
  %25 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %26 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %65, label %29

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
  %41 = load i32, i32* @LC_HW_VOLTAGE_IF_CONTROL_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = call i32 @LC_HW_VOLTAGE_IF_CONTROL(i32 1)
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @LC_GEN2_EN_STRAP, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @LC_CLR_FAILED_SPD_CHANGE_CNT, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @WREG32_PCIE_PORT(i32 %54, i32 %55)
  %57 = call i32 @udelay(i32 10)
  %58 = load i32, i32* @LC_CLR_FAILED_SPD_CHANGE_CNT, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @WREG32_PCIE_PORT(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %29, %24
  br label %66

66:                                               ; preds = %65, %19, %14
  br label %96

67:                                               ; preds = %2
  %68 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %69 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @LC_HW_VOLTAGE_IF_CONTROL_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @LC_GEN2_EN_STRAP, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @LC_OTHER_SIDE_EVER_SENT_GEN2, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @LC_OTHER_SIDE_SUPPORTS_GEN2, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86, %81
  %92 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @WREG32_PCIE_PORT(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %86
  br label %96

96:                                               ; preds = %95, %66
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
