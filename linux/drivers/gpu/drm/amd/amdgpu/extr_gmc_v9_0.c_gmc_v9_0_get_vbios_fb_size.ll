; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_get_vbios_fb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_get_vbios_fb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DCE = common dso_local global i32 0, align 4
@mmD1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION = common dso_local global i32 0, align 4
@HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION = common dso_local global i32 0, align 4
@PRI_VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@PRI_VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@mmSCL0_VIEWPORT_SIZE = common dso_local global i32 0, align 4
@SCL0_VIEWPORT_SIZE = common dso_local global i32 0, align 4
@VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v9_0_get_vbios_fb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v9_0_get_vbios_fb_size(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call i64 @gmc_v9_0_keep_stolen_memory(%struct.amdgpu_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 9437184, i32* %2, align 4
  br label %66

11:                                               ; preds = %1
  %12 = load i32, i32* @DCE, align 4
  %13 = load i32, i32* @mmD1VGA_CONTROL, align 4
  %14 = call i32 @RREG32_SOC15(i32 %12, i32 0, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @D1VGA_CONTROL, align 4
  %17 = load i32, i32* @D1VGA_MODE_ENABLE, align 4
  %18 = call i32 @REG_GET_FIELD(i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 9437184, i32* %5, align 4
  br label %55

21:                                               ; preds = %11
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %40 [
    i32 132, label %25
    i32 131, label %25
    i32 130, label %39
    i32 129, label %39
    i32 128, label %39
  ]

25:                                               ; preds = %21, %21
  %26 = load i32, i32* @DCE, align 4
  %27 = load i32, i32* @mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, align 4
  %28 = call i32 @RREG32_SOC15(i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, align 4
  %31 = load i32, i32* @PRI_VIEWPORT_HEIGHT, align 4
  %32 = call i32 @REG_GET_FIELD(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, align 4
  %35 = load i32, i32* @PRI_VIEWPORT_WIDTH, align 4
  %36 = call i32 @REG_GET_FIELD(i32 %33, i32 %34, i32 %35)
  %37 = mul nsw i32 %32, %36
  %38 = mul nsw i32 %37, 4
  store i32 %38, i32* %5, align 4
  br label %54

39:                                               ; preds = %21, %21, %21
  br label %40

40:                                               ; preds = %21, %39
  %41 = load i32, i32* @DCE, align 4
  %42 = load i32, i32* @mmSCL0_VIEWPORT_SIZE, align 4
  %43 = call i32 @RREG32_SOC15(i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SCL0_VIEWPORT_SIZE, align 4
  %46 = load i32, i32* @VIEWPORT_HEIGHT, align 4
  %47 = call i32 @REG_GET_FIELD(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SCL0_VIEWPORT_SIZE, align 4
  %50 = load i32, i32* @VIEWPORT_WIDTH, align 4
  %51 = call i32 @REG_GET_FIELD(i32 %48, i32 %49, i32 %50)
  %52 = mul nsw i32 %47, %51
  %53 = mul nsw i32 %52, 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %40, %25
  br label %55

55:                                               ; preds = %54, %20
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub i32 %59, %60
  %62 = icmp ult i32 %61, 8388608
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %63, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @gmc_v9_0_keep_stolen_memory(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
