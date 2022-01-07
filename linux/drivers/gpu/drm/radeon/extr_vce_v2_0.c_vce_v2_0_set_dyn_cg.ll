; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v2_0.c_vce_v2_0_set_dyn_cg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v2_0.c_vce_v2_0_set_dyn_cg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@VCE_CLOCK_GATING_B = common dso_local global i32 0, align 4
@VCE_UENC_CLOCK_GATING = common dso_local global i32 0, align 4
@VCE_UENC_REG_CLOCK_GATING = common dso_local global i32 0, align 4
@VCE_CGTT_CLK_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @vce_v2_0_set_dyn_cg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vce_v2_0_set_dyn_cg(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @VCE_CLOCK_GATING_B, align 4
  %8 = call i32 @RREG32(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, -393223
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, 14745600
  store i32 %15, i32* %6, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, 225
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, -14745601
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @VCE_CLOCK_GATING_B, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @WREG32(i32 %22, i32 %23)
  %25 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %6, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, -2088961
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 16777215
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i32, i32* @VCE_UENC_CLOCK_GATING, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %21
  %39 = load i32, i32* @VCE_UENC_REG_CLOCK_GATING, align 4
  %40 = call i32 @RREG32(i32 %39)
  store i32 %40, i32* %6, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, -1021
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @VCE_UENC_REG_CLOCK_GATING, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @VCE_CGTT_CLK_OVERRIDE, align 4
  %55 = call i32 @WREG32(i32 %54, i32 0)
  br label %56

56:                                               ; preds = %53, %50
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
