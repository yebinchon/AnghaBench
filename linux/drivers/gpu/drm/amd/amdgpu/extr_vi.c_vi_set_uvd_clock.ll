; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_set_uvd_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_set_uvd_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@CG_DCLK_CNTL__DCLK_DIVIDER_MASK = common dso_local global i32 0, align 4
@CG_DCLK_CNTL__DCLK_DIR_CNTL_EN_MASK = common dso_local global i32 0, align 4
@CG_DCLK_STATUS__DCLK_STATUS_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32, i32)* @vi_set_uvd_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vi_set_uvd_clock(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.atom_clock_dividers, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %15 = load i32, i32* @COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device* %14, i32 %15, i32 %16, i32 0, %struct.atom_clock_dividers* %12)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %88

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @RREG32_SMC(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AMD_IS_APU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* @CG_DCLK_CNTL__DCLK_DIVIDER_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %13, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %13, align 4
  br label %43

36:                                               ; preds = %22
  %37 = load i32, i32* @CG_DCLK_CNTL__DCLK_DIR_CNTL_EN_MASK, align 4
  %38 = load i32, i32* @CG_DCLK_CNTL__DCLK_DIVIDER_MASK, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %13, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @WREG32_SMC(i32 %48, i32 %49)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %78, %43
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @RREG32_SMC(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AMD_IS_APU, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 65536
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %81

68:                                               ; preds = %63
  br label %76

69:                                               ; preds = %54
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @CG_DCLK_STATUS__DCLK_STATUS_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %81

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %68
  %77 = call i32 @mdelay(i32 10)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %51

81:                                               ; preds = %74, %67, %51
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 100
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %88

87:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %84, %20
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
