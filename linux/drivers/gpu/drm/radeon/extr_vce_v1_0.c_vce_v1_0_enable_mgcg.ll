; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_enable_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_enable_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CG_SUPPORT_VCE_MGCG = common dso_local global i32 0, align 4
@VCE_CLOCK_GATING_A = common dso_local global i32 0, align 4
@CGC_DYN_CLOCK_MODE = common dso_local global i32 0, align 4
@VCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@VCE_UENC_REG_CLOCK_GATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vce_v1_0_enable_mgcg(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %2
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RADEON_CG_SUPPORT_VCE_MGCG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %8
  %16 = load i32, i32* @VCE_CLOCK_GATING_A, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @CGC_DYN_CLOCK_MODE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @VCE_CLOCK_GATING_A, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @WREG32(i32 %21, i32 %22)
  %24 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, -2093057
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, -8388608
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  %33 = load i32, i32* @VCE_UENC_REG_CLOCK_GATING, align 4
  %34 = call i32 @RREG32(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, -1024
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @VCE_UENC_REG_CLOCK_GATING, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @WREG32(i32 %37, i32 %38)
  br label %66

40:                                               ; preds = %8, %2
  %41 = load i32, i32* @VCE_CLOCK_GATING_A, align 4
  %42 = call i32 @RREG32(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @CGC_DYN_CLOCK_MODE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @VCE_CLOCK_GATING_A, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %51 = call i32 @RREG32(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, 2093056
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 8388607
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  %59 = load i32, i32* @VCE_UENC_REG_CLOCK_GATING, align 4
  %60 = call i32 @RREG32(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, 1023
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @VCE_UENC_REG_CLOCK_GATING, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %40, %15
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
