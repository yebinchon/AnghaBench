; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_multi_taps_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_multi_taps_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }

@SCL_PHASES = common dso_local global i32 0, align 4
@DCFE_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@SCL_COEFF_MEM_PWR_DIS = common dso_local global i32 0, align 4
@DCFE_MEM_PWR_STATUS = common dso_local global i32 0, align 4
@SCL_COEFF_MEM_PWR_STATE = common dso_local global i32 0, align 4
@SCL_COEF_RAM_SELECT = common dso_local global i32 0, align 4
@SCL_C_RAM_FILTER_TYPE = common dso_local global i32 0, align 4
@SCL_C_RAM_PHASE = common dso_local global i32 0, align 4
@SCL_C_RAM_TAP_PAIR_IDX = common dso_local global i32 0, align 4
@SCL_COEF_RAM_TAP_DATA = common dso_local global i32 0, align 4
@SCL_C_RAM_EVEN_TAP_COEF_EN = common dso_local global i32 0, align 4
@SCL_C_RAM_EVEN_TAP_COEF = common dso_local global i32 0, align 4
@SCL_C_RAM_ODD_TAP_COEF_EN = common dso_local global i32 0, align 4
@SCL_C_RAM_ODD_TAP_COEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, i32, i32*, i32)* @program_multi_taps_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_multi_taps_filter(%struct.dce_transform* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dce_transform*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @SCL_PHASES, align 4
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %108

26:                                               ; preds = %4
  %27 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %28 = call i64 @REG(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %32 = call i32 @REG_READ(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @SCL_COEFF_MEM_PWR_DIS, align 4
  %36 = call i32 @REG_SET(i32 %33, i32 %34, i32 %35, i32 1)
  %37 = load i32, i32* @DCFE_MEM_PWR_STATUS, align 4
  %38 = load i32, i32* @SCL_COEFF_MEM_PWR_STATE, align 4
  %39 = call i32 @REG_WAIT(i32 %37, i32 %38, i32 0, i32 1, i32 10)
  br label %40

40:                                               ; preds = %30, %26
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %97, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %100

45:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %93, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @SCL_COEF_RAM_SELECT, align 4
  %57 = load i32, i32* @SCL_C_RAM_FILTER_TYPE, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SCL_C_RAM_PHASE, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SCL_C_RAM_TAP_PAIR_IDX, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @REG_SET_3(i32 %56, i32 0, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = srem i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %50
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %84

75:                                               ; preds = %67, %50
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %75, %72
  %85 = load i32, i32* @SCL_COEF_RAM_TAP_DATA, align 4
  %86 = load i32, i32* @SCL_C_RAM_EVEN_TAP_COEF_EN, align 4
  %87 = load i32, i32* @SCL_C_RAM_EVEN_TAP_COEF, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @SCL_C_RAM_ODD_TAP_COEF_EN, align 4
  %90 = load i32, i32* @SCL_C_RAM_ODD_TAP_COEF, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @REG_SET_4(i32 %85, i32 0, i32 %86, i32 1, i32 %87, i32 %88, i32 %89, i32 1, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %46

96:                                               ; preds = %46
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %41

100:                                              ; preds = %41
  %101 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %102 = call i64 @REG(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @REG_WRITE(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %25, %104, %100
  ret void
}

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
