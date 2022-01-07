; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_get_harvest_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_get_harvest_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32 }

@CHIP_FIJI = common dso_local global i64 0, align 8
@CHIP_STONEY = common dso_local global i64 0, align 8
@AMDGPU_VCE_HARVEST_VCE1 = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@ixVCE_HARVEST_FUSE_MACRO__ADDRESS = common dso_local global i32 0, align 4
@VCE_HARVEST_FUSE_MACRO__MASK = common dso_local global i32 0, align 4
@VCE_HARVEST_FUSE_MACRO__SHIFT = common dso_local global i32 0, align 4
@ixCC_HARVEST_FUSES = common dso_local global i32 0, align 4
@CC_HARVEST_FUSES__VCE_DISABLE_MASK = common dso_local global i32 0, align 4
@CC_HARVEST_FUSES__VCE_DISABLE__SHIFT = common dso_local global i32 0, align 4
@AMDGPU_VCE_HARVEST_VCE0 = common dso_local global i32 0, align 4
@CHIP_POLARIS10 = common dso_local global i64 0, align 8
@CHIP_POLARIS11 = common dso_local global i64 0, align 8
@CHIP_POLARIS12 = common dso_local global i64 0, align 8
@CHIP_VEGAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vce_v3_0_get_harvest_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_get_harvest_config(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_FIJI, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_STONEY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE1, align 4
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %10
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AMD_IS_APU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @ixVCE_HARVEST_FUSE_MACRO__ADDRESS, align 4
  %27 = call i32 @RREG32_SMC(i32 %26)
  %28 = load i32, i32* @VCE_HARVEST_FUSE_MACRO__MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @VCE_HARVEST_FUSE_MACRO__SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %4, align 4
  br label %39

32:                                               ; preds = %18
  %33 = load i32, i32* @ixCC_HARVEST_FUSES, align 4
  %34 = call i32 @RREG32_SMC(i32 %33)
  %35 = load i32, i32* @CC_HARVEST_FUSES__VCE_DISABLE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @CC_HARVEST_FUSES__VCE_DISABLE__SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %49 [
    i32 1, label %41
    i32 2, label %43
    i32 3, label %45
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE0, align 4
  store i32 %42, i32* %2, align 4
  br label %76

43:                                               ; preds = %39
  %44 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE1, align 4
  store i32 %44, i32* %2, align 4
  br label %76

45:                                               ; preds = %39
  %46 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE0, align 4
  %47 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE1, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %2, align 4
  br label %76

49:                                               ; preds = %39
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CHIP_POLARIS10, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %73, label %55

55:                                               ; preds = %49
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CHIP_POLARIS11, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CHIP_POLARIS12, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CHIP_VEGAM, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67, %61, %55, %49
  %74 = load i32, i32* @AMDGPU_VCE_HARVEST_VCE1, align 4
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %73, %45, %43, %41, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @RREG32_SMC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
