; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_configure_graphics_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_configure_graphics_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }

@OUTPUT_CSC_CONTROL = common dso_local global i32 0, align 4
@OUTPUT_CSC_GRPH_MODE = common dso_local global i32 0, align 4
@GRAPHICS_CSC_ADJUST_TYPE_SW = common dso_local global i32 0, align 4
@CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC = common dso_local global i32 0, align 4
@GRAPHICS_CSC_ADJUST_TYPE_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_transform*, i32, i32, i32)* @configure_graphics_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_graphics_mode(%struct.dce_transform* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce_transform*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %11 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %12 = call i32 @REG_SET(i32 %10, i32 0, i32 %11, i32 0)
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @GRAPHICS_CSC_ADJUST_TYPE_SW, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %22 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %23 = call i32 @REG_SET(i32 %21, i32 0, i32 %22, i32 4)
  br label %44

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %42 [
    i32 133, label %26
    i32 132, label %30
    i32 131, label %34
    i32 130, label %34
    i32 129, label %38
    i32 128, label %38
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %28 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %29 = call i32 @REG_SET(i32 %27, i32 0, i32 %28, i32 0)
  br label %43

30:                                               ; preds = %24
  %31 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %32 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %33 = call i32 @REG_SET(i32 %31, i32 0, i32 %32, i32 1)
  br label %43

34:                                               ; preds = %24, %24
  %35 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %36 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %37 = call i32 @REG_SET(i32 %35, i32 0, i32 %36, i32 2)
  br label %43

38:                                               ; preds = %24, %24
  %39 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %40 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %41 = call i32 @REG_SET(i32 %39, i32 0, i32 %40, i32 3)
  br label %43

42:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %75

43:                                               ; preds = %38, %34, %30, %26
  br label %44

44:                                               ; preds = %43, %20
  br label %74

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @GRAPHICS_CSC_ADJUST_TYPE_HW, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %67 [
    i32 133, label %51
    i32 132, label %55
    i32 131, label %59
    i32 130, label %59
    i32 129, label %63
    i32 128, label %63
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %53 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %54 = call i32 @REG_SET(i32 %52, i32 0, i32 %53, i32 0)
  br label %68

55:                                               ; preds = %49
  %56 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %57 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %58 = call i32 @REG_SET(i32 %56, i32 0, i32 %57, i32 1)
  br label %68

59:                                               ; preds = %49, %49
  %60 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %61 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %62 = call i32 @REG_SET(i32 %60, i32 0, i32 %61, i32 2)
  br label %68

63:                                               ; preds = %49, %49
  %64 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %65 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %66 = call i32 @REG_SET(i32 %64, i32 0, i32 %65, i32 3)
  br label %68

67:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %75

68:                                               ; preds = %63, %59, %55, %51
  br label %73

69:                                               ; preds = %45
  %70 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %71 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %72 = call i32 @REG_SET(i32 %70, i32 0, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %69, %68
  br label %74

74:                                               ; preds = %73, %44
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %67, %42
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
