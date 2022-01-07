; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_tiling_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_tiling_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADEON_TILING_EG_BANKW_SHIFT = common dso_local global i32 0, align 4
@RADEON_TILING_EG_BANKW_MASK = common dso_local global i32 0, align 4
@RADEON_TILING_EG_BANKH_SHIFT = common dso_local global i32 0, align 4
@RADEON_TILING_EG_BANKH_MASK = common dso_local global i32 0, align 4
@RADEON_TILING_EG_MACRO_TILE_ASPECT_SHIFT = common dso_local global i32 0, align 4
@RADEON_TILING_EG_MACRO_TILE_ASPECT_MASK = common dso_local global i32 0, align 4
@RADEON_TILING_EG_TILE_SPLIT_SHIFT = common dso_local global i32 0, align 4
@RADEON_TILING_EG_TILE_SPLIT_MASK = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_BANK_WIDTH_1 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_BANK_WIDTH_2 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_BANK_WIDTH_4 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_BANK_WIDTH_8 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_BANK_HEIGHT_1 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_BANK_HEIGHT_2 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_BANK_HEIGHT_4 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_BANK_HEIGHT_8 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_MACRO_TILE_ASPECT_1 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_MACRO_TILE_ASPECT_2 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_MACRO_TILE_ASPECT_4 = common dso_local global i32 0, align 4
@EVERGREEN_ADDR_SURF_MACRO_TILE_ASPECT_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_tiling_fields(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @RADEON_TILING_EG_BANKW_SHIFT, align 4
  %13 = lshr i32 %11, %12
  %14 = load i32, i32* @RADEON_TILING_EG_BANKW_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RADEON_TILING_EG_BANKH_SHIFT, align 4
  %19 = lshr i32 %17, %18
  %20 = load i32, i32* @RADEON_TILING_EG_BANKH_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @RADEON_TILING_EG_MACRO_TILE_ASPECT_SHIFT, align 4
  %25 = lshr i32 %23, %24
  %26 = load i32, i32* @RADEON_TILING_EG_MACRO_TILE_ASPECT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RADEON_TILING_EG_TILE_SPLIT_SHIFT, align 4
  %31 = lshr i32 %29, %30
  %32 = load i32, i32* @RADEON_TILING_EG_TILE_SPLIT_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %37 [
    i32 1, label %38
    i32 2, label %41
    i32 4, label %44
    i32 8, label %47
  ]

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %5, %37
  %39 = load i32, i32* @EVERGREEN_ADDR_SURF_BANK_WIDTH_1, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %50

41:                                               ; preds = %5
  %42 = load i32, i32* @EVERGREEN_ADDR_SURF_BANK_WIDTH_2, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %50

44:                                               ; preds = %5
  %45 = load i32, i32* @EVERGREEN_ADDR_SURF_BANK_WIDTH_4, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %50

47:                                               ; preds = %5
  %48 = load i32, i32* @EVERGREEN_ADDR_SURF_BANK_WIDTH_8, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44, %41, %38
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %53 [
    i32 1, label %54
    i32 2, label %57
    i32 4, label %60
    i32 8, label %63
  ]

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %50, %53
  %55 = load i32, i32* @EVERGREEN_ADDR_SURF_BANK_HEIGHT_1, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %66

57:                                               ; preds = %50
  %58 = load i32, i32* @EVERGREEN_ADDR_SURF_BANK_HEIGHT_2, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %66

60:                                               ; preds = %50
  %61 = load i32, i32* @EVERGREEN_ADDR_SURF_BANK_HEIGHT_4, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EVERGREEN_ADDR_SURF_BANK_HEIGHT_8, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60, %57, %54
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %69 [
    i32 1, label %70
    i32 2, label %73
    i32 4, label %76
    i32 8, label %79
  ]

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %66, %69
  %71 = load i32, i32* @EVERGREEN_ADDR_SURF_MACRO_TILE_ASPECT_1, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %82

73:                                               ; preds = %66
  %74 = load i32, i32* @EVERGREEN_ADDR_SURF_MACRO_TILE_ASPECT_2, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %82

76:                                               ; preds = %66
  %77 = load i32, i32* @EVERGREEN_ADDR_SURF_MACRO_TILE_ASPECT_4, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %82

79:                                               ; preds = %66
  %80 = load i32, i32* @EVERGREEN_ADDR_SURF_MACRO_TILE_ASPECT_8, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76, %73, %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
