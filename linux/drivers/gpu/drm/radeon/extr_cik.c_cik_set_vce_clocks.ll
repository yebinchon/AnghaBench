; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_set_vce_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_set_vce_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK = common dso_local global i32 0, align 4
@CG_ECLK_STATUS = common dso_local global i32 0, align 4
@ECLK_STATUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@CG_ECLK_CNTL = common dso_local global i32 0, align 4
@ECLK_DIR_CNTL_EN = common dso_local global i32 0, align 4
@ECLK_DIVIDER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_set_vce_clocks(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atom_clock_dividers, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = load i32, i32* @COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %12, i32 %13, i32 %14, i32 0, %struct.atom_clock_dividers* %10)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %80

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 100
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* @CG_ECLK_STATUS, align 4
  %26 = call i32 @RREG32_SMC(i32 %25)
  %27 = load i32, i32* @ECLK_STATUS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %36

31:                                               ; preds = %24
  %32 = call i32 @mdelay(i32 10)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %21

36:                                               ; preds = %30, %21
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 100
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %80

42:                                               ; preds = %36
  %43 = load i32, i32* @CG_ECLK_CNTL, align 4
  %44 = call i32 @RREG32_SMC(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @ECLK_DIR_CNTL_EN, align 4
  %46 = load i32, i32* @ECLK_DIVIDER_MASK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @CG_ECLK_CNTL, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @WREG32_SMC(i32 %55, i32 %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %70, %42
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 100
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* @CG_ECLK_STATUS, align 4
  %63 = call i32 @RREG32_SMC(i32 %62)
  %64 = load i32, i32* @ECLK_STATUS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %73

68:                                               ; preds = %61
  %69 = call i32 @mdelay(i32 10)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %58

73:                                               ; preds = %67, %58
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 100
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76, %39, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
