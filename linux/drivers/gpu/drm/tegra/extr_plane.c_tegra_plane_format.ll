; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_plane.c_tegra_plane_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_plane.c_tegra_plane_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BYTE_SWAP_NOSWAP = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_B4G4R4A4 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_B5G5R5A1 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_B5G6R5 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_A1B5G5R5 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_B8G8R8A8 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_R8G8B8A8 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_R4G4B4A4 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_R5G5B5A = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_AR5G5B5 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_B5G5R5X1 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_X1B5G5R5 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_R5G5B5X1 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_X1R5G5B5 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_R5G6B5 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_A8R8G8B8 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_A8B8G8R8 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_B8G8R8X8 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_R8G8B8X8 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_YCbCr422 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BYTE_SWAP_SWAP2 = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_YCbCr420P = common dso_local global i32 0, align 4
@WIN_COLOR_DEPTH_YCbCr422P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_plane_format(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @BYTE_SWAP_NOSWAP, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %89 [
    i32 145, label %15
    i32 146, label %18
    i32 139, label %21
    i32 138, label %24
    i32 144, label %27
    i32 147, label %30
    i32 148, label %33
    i32 149, label %36
    i32 142, label %39
    i32 132, label %42
    i32 136, label %45
    i32 134, label %48
    i32 140, label %51
    i32 143, label %54
    i32 141, label %57
    i32 137, label %60
    i32 131, label %63
    i32 133, label %66
    i32 135, label %69
    i32 128, label %72
    i32 130, label %83
    i32 129, label %86
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @WIN_COLOR_DEPTH_B4G4R4A4, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %92

18:                                               ; preds = %13
  %19 = load i32, i32* @WIN_COLOR_DEPTH_B5G5R5A1, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  br label %92

21:                                               ; preds = %13
  %22 = load i32, i32* @WIN_COLOR_DEPTH_B5G6R5, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %92

24:                                               ; preds = %13
  %25 = load i32, i32* @WIN_COLOR_DEPTH_A1B5G5R5, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %92

27:                                               ; preds = %13
  %28 = load i32, i32* @WIN_COLOR_DEPTH_B8G8R8A8, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %92

30:                                               ; preds = %13
  %31 = load i32, i32* @WIN_COLOR_DEPTH_R8G8B8A8, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %92

33:                                               ; preds = %13
  %34 = load i32, i32* @WIN_COLOR_DEPTH_R4G4B4A4, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %92

36:                                               ; preds = %13
  %37 = load i32, i32* @WIN_COLOR_DEPTH_R5G5B5A, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %92

39:                                               ; preds = %13
  %40 = load i32, i32* @WIN_COLOR_DEPTH_AR5G5B5, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %92

42:                                               ; preds = %13
  %43 = load i32, i32* @WIN_COLOR_DEPTH_B5G5R5X1, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %92

45:                                               ; preds = %13
  %46 = load i32, i32* @WIN_COLOR_DEPTH_X1B5G5R5, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %92

48:                                               ; preds = %13
  %49 = load i32, i32* @WIN_COLOR_DEPTH_R5G5B5X1, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %92

51:                                               ; preds = %13
  %52 = load i32, i32* @WIN_COLOR_DEPTH_X1R5G5B5, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %92

54:                                               ; preds = %13
  %55 = load i32, i32* @WIN_COLOR_DEPTH_R5G6B5, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %92

57:                                               ; preds = %13
  %58 = load i32, i32* @WIN_COLOR_DEPTH_A8R8G8B8, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  br label %92

60:                                               ; preds = %13
  %61 = load i32, i32* @WIN_COLOR_DEPTH_A8B8G8R8, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  br label %92

63:                                               ; preds = %13
  %64 = load i32, i32* @WIN_COLOR_DEPTH_B8G8R8X8, align 4
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %92

66:                                               ; preds = %13
  %67 = load i32, i32* @WIN_COLOR_DEPTH_R8G8B8X8, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %92

69:                                               ; preds = %13
  %70 = load i32, i32* @WIN_COLOR_DEPTH_YCbCr422, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %92

72:                                               ; preds = %13
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %93

78:                                               ; preds = %72
  %79 = load i32, i32* @WIN_COLOR_DEPTH_YCbCr422, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @BYTE_SWAP_SWAP2, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  br label %92

83:                                               ; preds = %13
  %84 = load i32, i32* @WIN_COLOR_DEPTH_YCbCr420P, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %92

86:                                               ; preds = %13
  %87 = load i32, i32* @WIN_COLOR_DEPTH_YCbCr422P, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %92

89:                                               ; preds = %13
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %86, %83, %78, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %89, %75
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
