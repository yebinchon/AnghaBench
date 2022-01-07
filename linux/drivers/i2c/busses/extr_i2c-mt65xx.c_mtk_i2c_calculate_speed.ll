; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_calculate_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_calculate_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i32 }

@MAX_SAMPLE_CNT_DIV = common dso_local global i32 0, align 4
@MAX_HS_MODE_SPEED = common dso_local global i32 0, align 4
@MAX_FS_MODE_SPEED = common dso_local global i32 0, align 4
@MAX_HS_STEP_CNT_DIV = common dso_local global i32 0, align 4
@MAX_STEP_CNT_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported speed (%uhz)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_i2c*, i32, i32, i32*, i32*)* @mtk_i2c_calculate_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_calculate_speed(%struct.mtk_i2c* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_i2c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mtk_i2c* %0, %struct.mtk_i2c** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @MAX_SAMPLE_CNT_DIV, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MAX_HS_MODE_SPEED, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @MAX_HS_MODE_SPEED, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MAX_FS_MODE_SPEED, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @MAX_HS_STEP_CNT_DIV, align 4
  store i32 %31, i32* %14, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @MAX_STEP_CNT_DIV, align 4
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %8, align 4
  %37 = lshr i32 %36, 1
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %37, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* @MAX_SAMPLE_CNT_DIV, align 4
  %41 = load i32, i32* %14, align 4
  %42 = mul i32 %40, %41
  store i32 %42, i32* %18, align 4
  store i32 1, i32* %13, align 4
  br label %43

43:                                               ; preds = %72, %34
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @MAX_SAMPLE_CNT_DIV, align 4
  %46 = icmp ule i32 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @DIV_ROUND_UP(i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = mul i32 %51, %52
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %72

58:                                               ; preds = %47
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %75

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %43

75:                                               ; preds = %69, %43
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %13, align 4
  %80 = mul i32 2, %79
  %81 = load i32, i32* %12, align 4
  %82 = mul i32 %80, %81
  %83 = udiv i32 %78, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = load %struct.mtk_i2c*, %struct.mtk_i2c** %7, align 8
  %88 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %101

94:                                               ; preds = %75
  %95 = load i32, i32* %12, align 4
  %96 = sub i32 %95, 1
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = sub i32 %98, 1
  %100 = load i32*, i32** %11, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %94, %86
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
