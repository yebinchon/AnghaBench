; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_wbscl_set_scaler_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dwb_scl.c_wbscl_set_scaler_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn20_dwbc = type { i32 }

@NUM_PHASES = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_SELECT = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_TAP_PAIR_IDX = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_PHASE = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_FILTER_TYPE = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_TAP_DATA = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_EVEN_TAP_COEF = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_EVEN_TAP_COEF_EN = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_ODD_TAP_COEF = common dso_local global i32 0, align 4
@WBSCL_COEF_RAM_ODD_TAP_COEF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn20_dwbc*, i32, i32, i64*)* @wbscl_set_scaler_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbscl_set_scaler_filter(%struct.dcn20_dwbc* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.dcn20_dwbc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dcn20_dwbc* %0, %struct.dcn20_dwbc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %78, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @NUM_PHASES, align 4
  %20 = sdiv i32 %19, 2
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %74, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = load i64*, i64** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 2, %33
  %35 = add nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %29, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %13, align 8
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %28
  %45 = load i64*, i64** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %48, %50
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %45, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  br label %57

56:                                               ; preds = %28
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* @WBSCL_COEF_RAM_SELECT, align 4
  %59 = load i32, i32* @WBSCL_COEF_RAM_TAP_PAIR_IDX, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @WBSCL_COEF_RAM_PHASE, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @WBSCL_COEF_RAM_FILTER_TYPE, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @REG_SET_3(i32 %58, i32 0, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @WBSCL_COEF_RAM_TAP_DATA, align 4
  %67 = load i32, i32* @WBSCL_COEF_RAM_EVEN_TAP_COEF, align 4
  %68 = load i64, i64* %13, align 8
  %69 = load i32, i32* @WBSCL_COEF_RAM_EVEN_TAP_COEF_EN, align 4
  %70 = load i32, i32* @WBSCL_COEF_RAM_ODD_TAP_COEF, align 4
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* @WBSCL_COEF_RAM_ODD_TAP_COEF_EN, align 4
  %73 = call i32 @REG_SET_4(i32 %66, i32 0, i32 %67, i64 %68, i32 %69, i32 1, i32 %70, i64 %71, i32 %72, i32 1)
  br label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %24

77:                                               ; preds = %24
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %17

81:                                               ; preds = %17
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
