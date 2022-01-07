; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_set_divider_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_set_divider_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_SCLK_DPM_CTRL = common dso_local global i64 0, align 8
@SCLK_FSTATE_0_DIV_MASK = common dso_local global i32 0, align 4
@SCLK_FSTATE_1_DIV_MASK = common dso_local global i32 0, align 4
@SCLK_FSTATE_2_DIV_MASK = common dso_local global i32 0, align 4
@SCLK_FSTATE_3_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @sumo_set_divider_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_set_divider_value(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sdiv i32 %9, 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i64, i64* @CG_SCLK_DPM_CTRL, align 8
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @SCLK_FSTATE_0_DIV(i32 %21)
  %23 = load i32, i32* @SCLK_FSTATE_0_DIV_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @WREG32_P(i64 %20, i32 %22, i32 %24)
  br label %71

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i64, i64* @CG_SCLK_DPM_CTRL, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @SCLK_FSTATE_1_DIV(i32 %35)
  %37 = load i32, i32* @SCLK_FSTATE_1_DIV_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @WREG32_P(i64 %34, i32 %36, i32 %38)
  br label %70

40:                                               ; preds = %26
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i64, i64* @CG_SCLK_DPM_CTRL, align 8
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @SCLK_FSTATE_2_DIV(i32 %49)
  %51 = load i32, i32* @SCLK_FSTATE_2_DIV_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = call i32 @WREG32_P(i64 %48, i32 %50, i32 %52)
  br label %69

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i64, i64* @CG_SCLK_DPM_CTRL, align 8
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @SCLK_FSTATE_3_DIV(i32 %63)
  %65 = load i32, i32* @SCLK_FSTATE_3_DIV_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @WREG32_P(i64 %62, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %57, %54
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69, %29
  br label %71

71:                                               ; preds = %70, %15
  ret void
}

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

declare dso_local i32 @SCLK_FSTATE_0_DIV(i32) #1

declare dso_local i32 @SCLK_FSTATE_1_DIV(i32) #1

declare dso_local i32 @SCLK_FSTATE_2_DIV(i32) #1

declare dso_local i32 @SCLK_FSTATE_3_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
