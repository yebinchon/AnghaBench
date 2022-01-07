; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_get_current_sclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_get_current_sclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FVTHROT_STATUS_REG0 = common dso_local global i32 0, align 4
@CURRENT_FEEDBACK_DIV_MASK = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@SPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@SPLL_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@SPLL_SW_HILEN_MASK = common dso_local global i32 0, align 4
@SPLL_SW_HILEN_SHIFT = common dso_local global i32 0, align 4
@SPLL_SW_LOLEN_MASK = common dso_local global i32 0, align 4
@SPLL_SW_LOLEN_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs780_dpm_get_current_sclk(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %8 = load i32, i32* @FVTHROT_STATUS_REG0, align 4
  %9 = call i32 @RREG32(i32 %8)
  %10 = load i32, i32* @CURRENT_FEEDBACK_DIV_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SPLL_REF_DIV_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @SPLL_REF_DIV_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SPLL_SW_HILEN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @SPLL_SW_HILEN_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SPLL_SW_LOLEN_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @SPLL_SW_LOLEN_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = add nsw i32 %25, %30
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %39, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
