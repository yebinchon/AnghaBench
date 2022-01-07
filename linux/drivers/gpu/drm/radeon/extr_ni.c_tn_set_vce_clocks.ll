; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_tn_set_vce_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_tn_set_vce_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@CG_ECLK_STATUS = common dso_local global i32 0, align 4
@ECLK_STATUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@CG_ECLK_CNTL = common dso_local global i32 0, align 4
@ECLK_DIR_CNTL_EN = common dso_local global i32 0, align 4
@ECLK_DIVIDER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tn_set_vce_clocks(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.atom_clock_dividers, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %12 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %11, i32 %12, i32 %13, i32 0, %struct.atom_clock_dividers* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 100
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* @CG_ECLK_STATUS, align 4
  %25 = call i32 @RREG32(i32 %24)
  %26 = load i32, i32* @ECLK_STATUS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  %31 = call i32 @mdelay(i32 10)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %20

35:                                               ; preds = %29, %20
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 100
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %72

41:                                               ; preds = %35
  %42 = load i32, i32* @CG_ECLK_CNTL, align 4
  %43 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ECLK_DIR_CNTL_EN, align 4
  %46 = load i32, i32* @ECLK_DIVIDER_MASK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = call i32 @WREG32_P(i32 %42, i32 %44, i32 %48)
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %62, %41
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 100
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* @CG_ECLK_STATUS, align 4
  %55 = call i32 @RREG32(i32 %54)
  %56 = load i32, i32* @ECLK_STATUS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %65

60:                                               ; preds = %53
  %61 = call i32 @mdelay(i32 10)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %50

65:                                               ; preds = %59, %50
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 100
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %68, %38, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
