; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_get_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@CONT_WIDTH_BITS = common dso_local global i64 0, align 8
@geom = common dso_local global %struct.TYPE_2__* null, align 8
@CONT_HEIGHT_BITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"invalid coords: %u < 0 || %u > %u || %u < 0 || %u > %u\00", align 1
@MASK_X_INVERT = common dso_local global i64 0, align 8
@MASK_Y_INVERT = common dso_local global i64 0, align 8
@MASK_XY_FLIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @tiler_get_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tiler_get_address(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @CONT_WIDTH_BITS, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @geom, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %16, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* @CONT_HEIGHT_BITS, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @geom, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %24, %30
  store i64 %31, i64* %11, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @geom, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @geom, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %37, %43
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @MASK(i64 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @MASK(i64 %47)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %4
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %55, %51, %4
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @DBG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  store i64 0, i64* %5, align 8
  br label %112

70:                                               ; preds = %58
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @MASK_X_INVERT, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %8, align 8
  %78 = xor i64 %77, %76
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @MASK_Y_INVERT, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %9, align 8
  %87 = xor i64 %86, %85
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @MASK_XY_FLIP, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %11, align 8
  %96 = shl i64 %94, %95
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %96, %97
  store i64 %98, i64* %12, align 8
  br label %105

99:                                               ; preds = %88
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = shl i64 %100, %101
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %102, %103
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %15, align 8
  %108 = shl i64 %106, %107
  %109 = load i64, i64* %7, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @TIL_ADDR(i64 %108, i64 %109, i32 %110)
  store i64 %111, i64* %5, align 8
  br label %112

112:                                              ; preds = %105, %62
  %113 = load i64, i64* %5, align 8
  ret i64 %113
}

declare dso_local i64 @MASK(i64) #1

declare dso_local i32 @DBG(i8*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @TIL_ADDR(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
