; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_scaler_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_set_scaler_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { i32 }

@SCL_COEF_RAM_TAP_SELECT = common dso_local global i32 0, align 4
@SCL_COEF_RAM_TAP_PAIR_IDX = common dso_local global i32 0, align 4
@SCL_COEF_RAM_PHASE = common dso_local global i32 0, align 4
@SCL_COEF_RAM_FILTER_TYPE = common dso_local global i32 0, align 4
@NUM_PHASES = common dso_local global i32 0, align 4
@SCL_COEF_RAM_TAP_DATA = common dso_local global i32 0, align 4
@SCL_COEF_RAM_EVEN_TAP_COEF = common dso_local global i32 0, align 4
@SCL_COEF_RAM_EVEN_TAP_COEF_EN = common dso_local global i32 0, align 4
@SCL_COEF_RAM_ODD_TAP_COEF = common dso_local global i32 0, align 4
@SCL_COEF_RAM_ODD_TAP_COEF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, i32, i32, i64*)* @dpp1_dscl_set_scaler_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_dscl_set_scaler_filter(%struct.dcn10_dpp* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.dcn10_dpp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @SCL_COEF_RAM_TAP_SELECT, align 4
  %18 = load i32, i32* @SCL_COEF_RAM_TAP_PAIR_IDX, align 4
  %19 = load i32, i32* @SCL_COEF_RAM_PHASE, align 4
  %20 = load i32, i32* @SCL_COEF_RAM_FILTER_TYPE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @REG_SET_3(i32 %17, i32 0, i32 %18, i32 0, i32 %19, i32 0, i32 %20, i32 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %76, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @NUM_PHASES, align 4
  %26 = sdiv i32 %25, 2
  %27 = add nsw i32 %26, 1
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %72, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load i64*, i64** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %35, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %34
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 2, %55
  %57 = add nsw i32 %54, %56
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %51, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  br label %63

62:                                               ; preds = %34
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* @SCL_COEF_RAM_TAP_DATA, align 4
  %65 = load i32, i32* @SCL_COEF_RAM_EVEN_TAP_COEF, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @SCL_COEF_RAM_EVEN_TAP_COEF_EN, align 4
  %68 = load i32, i32* @SCL_COEF_RAM_ODD_TAP_COEF, align 4
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* @SCL_COEF_RAM_ODD_TAP_COEF_EN, align 4
  %71 = call i32 @REG_SET_4(i32 %64, i32 0, i32 %65, i64 %66, i32 %67, i32 1, i32 %68, i64 %69, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %30

75:                                               ; preds = %30
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %23

79:                                               ; preds = %23
  ret void
}

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i64, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
