; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_enable_gfx_cgpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_enable_gfx_cgpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_PG_SUPPORT_GFX_PG = common dso_local global i32 0, align 4
@mmRLC_PG_CNTL = common dso_local global i32 0, align 4
@RLC_PG_CNTL__GFX_POWER_GATING_ENABLE_MASK = common dso_local global i32 0, align 4
@mmRLC_AUTO_PG_CTRL = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL__AUTO_PG_EN_MASK = common dso_local global i32 0, align 4
@mmDB_RENDER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v7_0_enable_gfx_cgpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_enable_gfx_cgpg(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AMD_PG_SUPPORT_GFX_PG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %9
  %17 = load i32, i32* @mmRLC_PG_CNTL, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %5, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @RLC_PG_CNTL__GFX_POWER_GATING_ENABLE_MASK, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @mmRLC_PG_CNTL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WREG32(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* @mmRLC_AUTO_PG_CTRL, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %5, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @RLC_AUTO_PG_CTRL__AUTO_PG_EN_MASK, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @mmRLC_AUTO_PG_CTRL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @WREG32(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %29
  br label %74

43:                                               ; preds = %9, %2
  %44 = load i32, i32* @mmRLC_PG_CNTL, align 4
  %45 = call i32 @RREG32(i32 %44)
  store i32 %45, i32* %5, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @RLC_PG_CNTL__GFX_POWER_GATING_ENABLE_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @mmRLC_PG_CNTL, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %43
  %58 = load i32, i32* @mmRLC_AUTO_PG_CTRL, align 4
  %59 = call i32 @RREG32(i32 %58)
  store i32 %59, i32* %5, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @RLC_AUTO_PG_CTRL__AUTO_PG_EN_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @mmRLC_AUTO_PG_CTRL, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @WREG32(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %57
  %72 = load i32, i32* @mmDB_RENDER_CONTROL, align 4
  %73 = call i32 @RREG32(i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %42
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
