; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dce110/extr_hw_translate_dce110.c_offset_to_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/dce110/extr_hw_translate_dce110.c_offset_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_ID_GENERIC = common dso_local global i32 0, align 4
@GPIO_GENERIC_A = common dso_local global i32 0, align 4
@GPIO_GENERIC_B = common dso_local global i32 0, align 4
@GPIO_GENERIC_C = common dso_local global i32 0, align 4
@GPIO_GENERIC_D = common dso_local global i32 0, align 4
@GPIO_GENERIC_E = common dso_local global i32 0, align 4
@GPIO_GENERIC_F = common dso_local global i32 0, align 4
@GPIO_GENERIC_G = common dso_local global i32 0, align 4
@GPIO_ID_HPD = common dso_local global i32 0, align 4
@GPIO_HPD_1 = common dso_local global i32 0, align 4
@GPIO_HPD_2 = common dso_local global i32 0, align 4
@GPIO_HPD_3 = common dso_local global i32 0, align 4
@GPIO_HPD_4 = common dso_local global i32 0, align 4
@GPIO_HPD_5 = common dso_local global i32 0, align 4
@GPIO_HPD_6 = common dso_local global i32 0, align 4
@GPIO_ID_SYNC = common dso_local global i32 0, align 4
@GPIO_SYNC_HSYNC_A = common dso_local global i32 0, align 4
@GPIO_SYNC_VSYNC_A = common dso_local global i32 0, align 4
@GPIO_ID_GSL = common dso_local global i32 0, align 4
@GPIO_GSL_GENLOCK_CLOCK = common dso_local global i32 0, align 4
@GPIO_GSL_GENLOCK_VSYNC = common dso_local global i32 0, align 4
@GPIO_GSL_SWAPLOCK_A = common dso_local global i32 0, align 4
@GPIO_GSL_SWAPLOCK_B = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC1 = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC2 = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC3 = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC4 = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC5 = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC6 = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_DDC_VGA = common dso_local global i32 0, align 4
@GPIO_DDC_LINE_I2C_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @offset_to_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offset_to_id(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %117 [
    i32 135, label %11
    i32 133, label %38
    i32 128, label %62
    i32 134, label %74
    i32 143, label %92
    i32 142, label %95
    i32 141, label %98
    i32 140, label %101
    i32 139, label %104
    i32 138, label %107
    i32 137, label %110
    i32 132, label %113
    i32 129, label %116
    i32 131, label %116
    i32 130, label %116
    i32 136, label %116
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @GPIO_ID_GENERIC, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %36 [
    i32 162, label %15
    i32 161, label %18
    i32 160, label %21
    i32 159, label %24
    i32 158, label %27
    i32 157, label %30
    i32 156, label %33
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @GPIO_GENERIC_A, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %5, align 4
  br label %119

18:                                               ; preds = %11
  %19 = load i32, i32* @GPIO_GENERIC_B, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  store i32 1, i32* %5, align 4
  br label %119

21:                                               ; preds = %11
  %22 = load i32, i32* @GPIO_GENERIC_C, align 4
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %5, align 4
  br label %119

24:                                               ; preds = %11
  %25 = load i32, i32* @GPIO_GENERIC_D, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %5, align 4
  br label %119

27:                                               ; preds = %11
  %28 = load i32, i32* @GPIO_GENERIC_E, align 4
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  store i32 1, i32* %5, align 4
  br label %119

30:                                               ; preds = %11
  %31 = load i32, i32* @GPIO_GENERIC_F, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  store i32 1, i32* %5, align 4
  br label %119

33:                                               ; preds = %11
  %34 = load i32, i32* @GPIO_GENERIC_G, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  store i32 1, i32* %5, align 4
  br label %119

36:                                               ; preds = %11
  %37 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %5, align 4
  br label %119

38:                                               ; preds = %4
  %39 = load i32, i32* @GPIO_ID_HPD, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %60 [
    i32 151, label %42
    i32 150, label %45
    i32 149, label %48
    i32 148, label %51
    i32 147, label %54
    i32 146, label %57
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @GPIO_HPD_1, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %5, align 4
  br label %119

45:                                               ; preds = %38
  %46 = load i32, i32* @GPIO_HPD_2, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  store i32 1, i32* %5, align 4
  br label %119

48:                                               ; preds = %38
  %49 = load i32, i32* @GPIO_HPD_3, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  store i32 1, i32* %5, align 4
  br label %119

51:                                               ; preds = %38
  %52 = load i32, i32* @GPIO_HPD_4, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %5, align 4
  br label %119

54:                                               ; preds = %38
  %55 = load i32, i32* @GPIO_HPD_5, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store i32 1, i32* %5, align 4
  br label %119

57:                                               ; preds = %38
  %58 = load i32, i32* @GPIO_HPD_6, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  store i32 1, i32* %5, align 4
  br label %119

60:                                               ; preds = %38
  %61 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %5, align 4
  br label %119

62:                                               ; preds = %4
  %63 = load i32, i32* @GPIO_ID_SYNC, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %72 [
    i32 145, label %66
    i32 144, label %69
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @GPIO_SYNC_HSYNC_A, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  store i32 1, i32* %5, align 4
  br label %119

69:                                               ; preds = %62
  %70 = load i32, i32* @GPIO_SYNC_VSYNC_A, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  store i32 1, i32* %5, align 4
  br label %119

72:                                               ; preds = %62
  %73 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %5, align 4
  br label %119

74:                                               ; preds = %4
  %75 = load i32, i32* @GPIO_ID_GSL, align 4
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %90 [
    i32 155, label %78
    i32 154, label %81
    i32 153, label %84
    i32 152, label %87
  ]

78:                                               ; preds = %74
  %79 = load i32, i32* @GPIO_GSL_GENLOCK_CLOCK, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  store i32 1, i32* %5, align 4
  br label %119

81:                                               ; preds = %74
  %82 = load i32, i32* @GPIO_GSL_GENLOCK_VSYNC, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  store i32 1, i32* %5, align 4
  br label %119

84:                                               ; preds = %74
  %85 = load i32, i32* @GPIO_GSL_SWAPLOCK_A, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  store i32 1, i32* %5, align 4
  br label %119

87:                                               ; preds = %74
  %88 = load i32, i32* @GPIO_GSL_SWAPLOCK_B, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  store i32 1, i32* %5, align 4
  br label %119

90:                                               ; preds = %74
  %91 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %5, align 4
  br label %119

92:                                               ; preds = %4
  %93 = load i32, i32* @GPIO_DDC_LINE_DDC1, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  store i32 1, i32* %5, align 4
  br label %119

95:                                               ; preds = %4
  %96 = load i32, i32* @GPIO_DDC_LINE_DDC2, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  store i32 1, i32* %5, align 4
  br label %119

98:                                               ; preds = %4
  %99 = load i32, i32* @GPIO_DDC_LINE_DDC3, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  store i32 1, i32* %5, align 4
  br label %119

101:                                              ; preds = %4
  %102 = load i32, i32* @GPIO_DDC_LINE_DDC4, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  store i32 1, i32* %5, align 4
  br label %119

104:                                              ; preds = %4
  %105 = load i32, i32* @GPIO_DDC_LINE_DDC5, align 4
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  store i32 1, i32* %5, align 4
  br label %119

107:                                              ; preds = %4
  %108 = load i32, i32* @GPIO_DDC_LINE_DDC6, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  store i32 1, i32* %5, align 4
  br label %119

110:                                              ; preds = %4
  %111 = load i32, i32* @GPIO_DDC_LINE_DDC_VGA, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  store i32 1, i32* %5, align 4
  br label %119

113:                                              ; preds = %4
  %114 = load i32, i32* @GPIO_DDC_LINE_I2C_PAD, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  store i32 1, i32* %5, align 4
  br label %119

116:                                              ; preds = %4, %4, %4, %4
  store i32 0, i32* %5, align 4
  br label %119

117:                                              ; preds = %4
  %118 = call i32 @ASSERT_CRITICAL(i32 0)
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %116, %113, %110, %107, %104, %101, %98, %95, %92, %90, %87, %84, %81, %78, %72, %69, %66, %60, %57, %54, %51, %48, %45, %42, %36, %33, %30, %27, %24, %21, %18, %15
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
