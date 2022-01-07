; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_get_vbios_fb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_get_vbios_fb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DCE = common dso_local global i32 0, align 4
@mmD1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION = common dso_local global i32 0, align 4
@mmHUBPREQ0_DCSURF_SURFACE_PITCH = common dso_local global i32 0, align 4
@HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION = common dso_local global i32 0, align 4
@PRI_VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@HUBPREQ0_DCSURF_SURFACE_PITCH = common dso_local global i32 0, align 4
@PITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Warning: pre-OS buffer uses most of vram, \09\09\09\09be aware of gart table overwrite\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v10_0_get_vbios_fb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v10_0_get_vbios_fb_size(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load i32, i32* @DCE, align 4
  %9 = load i32, i32* @mmD1VGA_CONTROL, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @D1VGA_CONTROL, align 4
  %13 = load i32, i32* @D1VGA_MODE_ENABLE, align 4
  %14 = call i32 @REG_GET_FIELD(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 9437184, i32* %5, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load i32, i32* @DCE, align 4
  %19 = load i32, i32* @mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, align 4
  %20 = call i32 @RREG32_SOC15(i32 %18, i32 0, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @DCE, align 4
  %22 = load i32, i32* @mmHUBPREQ0_DCSURF_SURFACE_PITCH, align 4
  %23 = call i32 @RREG32_SOC15(i32 %21, i32 0, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, align 4
  %26 = load i32, i32* @PRI_VIEWPORT_HEIGHT, align 4
  %27 = call i32 @REG_GET_FIELD(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HUBPREQ0_DCSURF_SURFACE_PITCH, align 4
  %30 = load i32, i32* @PITCH, align 4
  %31 = call i32 @REG_GET_FIELD(i32 %28, i32 %29, i32 %30)
  %32 = mul nsw i32 %27, %31
  %33 = mul nsw i32 %32, 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %17, %16
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub i32 %38, %39
  %41 = icmp ult i32 %40, 8388608
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
