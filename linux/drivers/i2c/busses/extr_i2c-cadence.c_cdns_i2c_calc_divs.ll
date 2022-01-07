; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_calc_divs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_calc_divs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDNS_I2C_DIVA_MAX = common dso_local global i64 0, align 8
@CDNS_I2C_DIVB_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32*, i32*)* @cdns_i2c_calc_divs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i2c_calc_divs(i64* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %10, align 8
  %26 = mul i64 22, %25
  %27 = udiv i64 %24, %26
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @CDNS_I2C_DIVA_MAX, align 8
  %33 = load i64, i64* @CDNS_I2C_DIVB_MAX, align 8
  %34 = mul i64 %32, %33
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %113

39:                                               ; preds = %30
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %103, %39
  %41 = load i32, i32* %14, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* @CDNS_I2C_DIVA_MAX, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %106

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = mul i64 22, %47
  %49 = load i32, i32* %14, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = mul i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @DIV_ROUND_UP(i64 %46, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ult i32 %55, 1
  br i1 %56, label %62, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %15, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @CDNS_I2C_DIVB_MAX, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %45
  br label %103

63:                                               ; preds = %57
  %64 = load i32, i32* %15, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %15, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add i32 %67, 1
  %69 = mul i32 22, %68
  %70 = load i32, i32* %15, align 4
  %71 = add i32 %70, 1
  %72 = mul i32 %69, %71
  %73 = zext i32 %72 to i64
  %74 = udiv i64 %66, %73
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %103

79:                                               ; preds = %63
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub i64 %84, %85
  br label %91

87:                                               ; preds = %79
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = sub i64 %88, %89
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i64 [ %86, %83 ], [ %90, %87 ]
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %17, align 4
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %11, align 8
  %101 = load i32, i32* %19, align 4
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %97, %91
  br label %103

103:                                              ; preds = %102, %78, %62
  %104 = load i32, i32* %14, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %40

106:                                              ; preds = %40
  %107 = load i32, i32* %16, align 4
  %108 = load i32*, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i64, i64* %11, align 8
  %112 = load i64*, i64** %6, align 8
  store i64 %111, i64* %112, align 8
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %106, %36
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
