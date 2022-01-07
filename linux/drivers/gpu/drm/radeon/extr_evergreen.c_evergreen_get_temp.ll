; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_JUNIPER = common dso_local global i64 0, align 8
@CG_THERMAL_CTRL = common dso_local global i32 0, align 4
@TOFFSET_MASK = common dso_local global i32 0, align 4
@TOFFSET_SHIFT = common dso_local global i32 0, align 4
@CG_TS0_STATUS = common dso_local global i32 0, align 4
@TS0_ADC_DOUT_MASK = common dso_local global i32 0, align 4
@TS0_ADC_DOUT_SHIFT = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_STATUS = common dso_local global i32 0, align 4
@ASIC_T_MASK = common dso_local global i32 0, align 4
@ASIC_T_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_get_temp(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHIP_JUNIPER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @CG_THERMAL_CTRL, align 4
  %13 = call i32 @RREG32(i32 %12)
  %14 = load i32, i32* @TOFFSET_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @TOFFSET_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CG_TS0_STATUS, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = load i32, i32* @TS0_ADC_DOUT_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @TS0_ADC_DOUT_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 256
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 2
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 512, %30
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %11
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, 2
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 1000
  store i32 %40, i32* %5, align 4
  br label %75

41:                                               ; preds = %1
  %42 = load i32, i32* @CG_MULT_THERMAL_STATUS, align 4
  %43 = call i32 @RREG32(i32 %42)
  %44 = load i32, i32* @ASIC_T_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @ASIC_T_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 1024
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 -256, i32* %5, align 4
  br label %71

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, 512
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 255, i32* %5, align 4
  br label %70

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 256
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 511
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, -512
  store i32 %65, i32* %5, align 4
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, 255
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 %72, 1000
  %74 = sdiv i32 %73, 2
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %38
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
