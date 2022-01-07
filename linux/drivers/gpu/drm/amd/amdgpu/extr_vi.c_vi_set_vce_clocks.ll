; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_set_vce_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_set_vce_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.atom_clock_dividers = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@ixGNB_CLK3_DFS_CNTL = common dso_local global i32 0, align 4
@ixGNB_CLK3_STATUS = common dso_local global i32 0, align 4
@CG_ECLK_CNTL__ECLK_DIVIDER_MASK = common dso_local global i32 0, align 4
@ixCG_ECLK_CNTL = common dso_local global i32 0, align 4
@ixCG_ECLK_STATUS = common dso_local global i32 0, align 4
@CG_ECLK_STATUS__ECLK_STATUS_MASK = common dso_local global i32 0, align 4
@CG_ECLK_CNTL__ECLK_DIR_CNTL_EN_MASK = common dso_local global i32 0, align 4
@COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32)* @vi_set_vce_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vi_set_vce_clocks(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atom_clock_dividers, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AMD_IS_APU, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @ixGNB_CLK3_DFS_CNTL, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @ixGNB_CLK3_STATUS, align 4
  store i32 %24, i32* %13, align 4
  store i32 65536, i32* %14, align 4
  %25 = load i32, i32* @CG_ECLK_CNTL__ECLK_DIVIDER_MASK, align 4
  store i32 %25, i32* %15, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @ixCG_ECLK_CNTL, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @ixCG_ECLK_STATUS, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @CG_ECLK_STATUS__ECLK_STATUS_MASK, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @CG_ECLK_CNTL__ECLK_DIR_CNTL_EN_MASK, align 4
  %31 = load i32, i32* @CG_ECLK_CNTL__ECLK_DIVIDER_MASK, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %26, %22
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %35 = load i32, i32* @COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device* %34, i32 %35, i32 %36, i32 0, %struct.atom_clock_dividers* %10)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %100

42:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 100
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @RREG32_SMC(i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %58

53:                                               ; preds = %46
  %54 = call i32 @mdelay(i32 10)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %43

58:                                               ; preds = %52, %43
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 100
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %100

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @RREG32_SMC(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %15, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @WREG32_SMC(i32 %75, i32 %76)
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %90, %64
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 100
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @RREG32_SMC(i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %93

88:                                               ; preds = %81
  %89 = call i32 @mdelay(i32 10)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %78

93:                                               ; preds = %87, %78
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 100
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %100

99:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %96, %61, %40
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
