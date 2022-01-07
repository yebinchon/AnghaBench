; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_set_divider_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_set_divider_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_clock_dividers = type { i32 }

@TRINITY_SIZEOF_DPM_STATE_TABLE = common dso_local global i32 0, align 4
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@SMU_SCLK_DPM_STATE_0_CNTL_0 = common dso_local global i32 0, align 4
@CLK_DIVIDER_MASK = common dso_local global i32 0, align 4
@SMU_SCLK_DPM_STATE_0_PG_CNTL = common dso_local global i32 0, align 4
@PD_SCLK_DIVIDER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @trinity_set_divider_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_set_divider_value(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_clock_dividers, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TRINITY_SIZEOF_DPM_STATE_TABLE, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %15 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %14, i32 %15, i32 %16, i32 0, %struct.atom_clock_dividers* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %67

21:                                               ; preds = %3
  %22 = load i32, i32* @SMU_SCLK_DPM_STATE_0_CNTL_0, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @RREG32_SMC(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @CLK_DIVIDER_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CLK_DIVIDER(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @SMU_SCLK_DPM_STATE_0_CNTL_0, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @WREG32_SMC(i32 %37, i32 %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %41 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 2
  %44 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %40, i32 %41, i32 %43, i32 0, %struct.atom_clock_dividers* %7)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %21
  br label %67

48:                                               ; preds = %21
  %49 = load i32, i32* @SMU_SCLK_DPM_STATE_0_PG_CNTL, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @RREG32_SMC(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @PD_SCLK_DIVIDER_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PD_SCLK_DIVIDER(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @SMU_SCLK_DPM_STATE_0_PG_CNTL, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @WREG32_SMC(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %48, %47, %20
  ret void
}

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @CLK_DIVIDER(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @PD_SCLK_DIVIDER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
