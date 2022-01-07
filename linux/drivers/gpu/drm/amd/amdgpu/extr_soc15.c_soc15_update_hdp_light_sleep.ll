; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_update_hdp_light_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_update_hdp_light_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32 }

@CHIP_VEGA20 = common dso_local global i64 0, align 8
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@HDP = common dso_local global i32 0, align 4
@mmHDP_MEM_POWER_CTRL = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_LS = common dso_local global i32 0, align 4
@HDP_MEM_POWER_CTRL__IPH_MEM_POWER_CTRL_EN_MASK = common dso_local global i32 0, align 4
@HDP_MEM_POWER_CTRL__IPH_MEM_POWER_LS_EN_MASK = common dso_local global i32 0, align 4
@HDP_MEM_POWER_CTRL__RC_MEM_POWER_CTRL_EN_MASK = common dso_local global i32 0, align 4
@HDP_MEM_POWER_CTRL__RC_MEM_POWER_LS_EN_MASK = common dso_local global i32 0, align 4
@mmHDP_MEM_POWER_LS = common dso_local global i32 0, align 4
@HDP_MEM_POWER_LS__LS_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @soc15_update_hdp_light_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc15_update_hdp_light_sleep(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHIP_VEGA20, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_ARCTURUS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @HDP, align 4
  %20 = load i32, i32* @mmHDP_MEM_POWER_CTRL, align 4
  %21 = call i32 @SOC15_REG_OFFSET(i32 %19, i32 0, i32 %20)
  %22 = call i32 @RREG32(i32 %21)
  store i32 %22, i32* %6, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load i32, i32* @HDP_MEM_POWER_CTRL__IPH_MEM_POWER_CTRL_EN_MASK, align 4
  %34 = load i32, i32* @HDP_MEM_POWER_CTRL__IPH_MEM_POWER_LS_EN_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HDP_MEM_POWER_CTRL__RC_MEM_POWER_CTRL_EN_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HDP_MEM_POWER_CTRL__RC_MEM_POWER_LS_EN_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %53

42:                                               ; preds = %25, %18
  %43 = load i32, i32* @HDP_MEM_POWER_CTRL__IPH_MEM_POWER_CTRL_EN_MASK, align 4
  %44 = load i32, i32* @HDP_MEM_POWER_CTRL__IPH_MEM_POWER_LS_EN_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @HDP_MEM_POWER_CTRL__RC_MEM_POWER_CTRL_EN_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @HDP_MEM_POWER_CTRL__RC_MEM_POWER_LS_EN_MASK, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %42, %32
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* @HDP, align 4
  %59 = load i32, i32* @mmHDP_MEM_POWER_CTRL, align 4
  %60 = call i32 @SOC15_REG_OFFSET(i32 %58, i32 0, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %53
  br label %98

64:                                               ; preds = %12
  %65 = load i32, i32* @HDP, align 4
  %66 = load i32, i32* @mmHDP_MEM_POWER_LS, align 4
  %67 = call i32 @SOC15_REG_OFFSET(i32 %65, i32 0, i32 %66)
  %68 = call i32 @RREG32(i32 %67)
  store i32 %68, i32* %6, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @HDP_MEM_POWER_LS__LS_ENABLE_MASK, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %87

82:                                               ; preds = %71, %64
  %83 = load i32, i32* @HDP_MEM_POWER_LS__LS_ENABLE_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* @HDP, align 4
  %93 = load i32, i32* @mmHDP_MEM_POWER_LS, align 4
  %94 = call i32 @SOC15_REG_OFFSET(i32 %92, i32 0, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97, %63
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
