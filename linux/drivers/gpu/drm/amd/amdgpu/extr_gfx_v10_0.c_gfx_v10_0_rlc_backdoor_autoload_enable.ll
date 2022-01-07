; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_rlc_backdoor_autoload_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_rlc_backdoor_autoload_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@rlc_autoload_info = common dso_local global %struct.TYPE_6__* null, align 8
@FIRMWARE_ID_RLC_G_UCODE = common dso_local global i64 0, align 8
@GC = common dso_local global i32 0, align 4
@mmRLC_HYP_BOOTLOAD_ADDR_HI = common dso_local global i32 0, align 4
@mmRLC_HYP_BOOTLOAD_ADDR_LO = common dso_local global i32 0, align 4
@mmRLC_HYP_BOOTLOAD_SIZE = common dso_local global i32 0, align 4
@mmRLC_HYP_RESET_VECTOR = common dso_local global i32 0, align 4
@RLC_HYP_RESET_VECTOR__COLD_BOOT_EXIT_MASK = common dso_local global i32 0, align 4
@RLC_HYP_RESET_VECTOR__VDDGFX_EXIT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Neither COLD_BOOT_EXIT nor VDDGFX_EXIT is set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmRLC_CNTL = common dso_local global i32 0, align 4
@RLC_CNTL__RLC_ENABLE_F32_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"RLC ROM should halt itself\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_rlc_backdoor_autoload_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_rlc_backdoor_autoload_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i32 @gfx_v10_0_rlc_backdoor_autoload_copy_toc_ucode(%struct.amdgpu_device* %8)
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call i32 @gfx_v10_0_rlc_backdoor_autoload_copy_sdma_ucode(%struct.amdgpu_device* %10)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call i32 @gfx_v10_0_rlc_backdoor_autoload_copy_gfx_ucode(%struct.amdgpu_device* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rlc_autoload_info, align 8
  %15 = load i64, i64* @FIRMWARE_ID_RLC_G_UCODE, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rlc_autoload_info, align 8
  %20 = load i64, i64* @FIRMWARE_ID_RLC_G_UCODE, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @GC, align 4
  %32 = load i32, i32* @mmRLC_HYP_BOOTLOAD_ADDR_HI, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @upper_32_bits(i32 %33)
  %35 = call i32 @WREG32_SOC15(i32 %31, i32 0, i32 %32, i32 %34)
  %36 = load i32, i32* @GC, align 4
  %37 = load i32, i32* @mmRLC_HYP_BOOTLOAD_ADDR_LO, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @lower_32_bits(i32 %38)
  %40 = call i32 @WREG32_SOC15(i32 %36, i32 0, i32 %37, i32 %39)
  %41 = load i32, i32* @GC, align 4
  %42 = load i32, i32* @mmRLC_HYP_BOOTLOAD_SIZE, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @WREG32_SOC15(i32 %41, i32 0, i32 %42, i32 %43)
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmRLC_HYP_RESET_VECTOR, align 4
  %47 = call i32 @RREG32_SOC15(i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @RLC_HYP_RESET_VECTOR__COLD_BOOT_EXIT_MASK, align 4
  %50 = load i32, i32* @RLC_HYP_RESET_VECTOR__VDDGFX_EXIT_MASK, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %1
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %71

58:                                               ; preds = %1
  %59 = load i32, i32* @GC, align 4
  %60 = load i32, i32* @mmRLC_CNTL, align 4
  %61 = call i32 @RREG32_SOC15(i32 %59, i32 0, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @RLC_CNTL__RLC_ENABLE_F32_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %66, %54
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_copy_toc_ucode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_copy_sdma_ucode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_copy_gfx_ucode(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
