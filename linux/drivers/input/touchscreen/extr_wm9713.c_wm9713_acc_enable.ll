; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9713.c_wm9713_acc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9713.c_wm9713_acc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)* }

@WM9713_ADCSEL_MASK = common dso_local global i32 0, align 4
@WM9713_CTC = common dso_local global i32 0, align 4
@WM9713_COO = common dso_local global i32 0, align 4
@WM9713_ADCSEL_X = common dso_local global i32 0, align 4
@WM9713_ADCSEL_Y = common dso_local global i32 0, align 4
@pil = common dso_local global i64 0, align 8
@WM9713_ADCSEL_PRES = common dso_local global i32 0, align 4
@WM97XX_DELAY_MASK = common dso_local global i32 0, align 4
@WM97XX_SLT_MASK = common dso_local global i32 0, align 4
@WM97XX_CM_RATE_MASK = common dso_local global i32 0, align 4
@WM97XX_SLEN = common dso_local global i32 0, align 4
@delay = common dso_local global i32 0, align 4
@WM9713_PDEN = common dso_local global i32 0, align 4
@AC97_WM9713_DIG1 = common dso_local global i32 0, align 4
@AC97_WM9713_DIG2 = common dso_local global i32 0, align 4
@AC97_WM9713_DIG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, i32)* @wm9713_acc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_acc_enable(%struct.wm97xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %11 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %16 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %21 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %2
  %28 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %29 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %31, align 8
  %33 = icmp ne i32 (%struct.wm97xx*)* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %36 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %38, align 8
  %40 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %41 = call i32 %39(%struct.wm97xx* %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %137

45:                                               ; preds = %34, %27
  %46 = load i32, i32* @WM9713_ADCSEL_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @WM9713_CTC, align 4
  %51 = load i32, i32* @WM9713_COO, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @WM9713_ADCSEL_X, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @WM9713_ADCSEL_Y, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i64, i64* @pil, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = load i32, i32* @WM9713_ADCSEL_PRES, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %45
  %66 = load i32, i32* @WM97XX_DELAY_MASK, align 4
  %67 = load i32, i32* @WM97XX_SLT_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @WM97XX_CM_RATE_MASK, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @WM97XX_SLEN, align 4
  %75 = load i32, i32* @delay, align 4
  %76 = call i32 @WM97XX_DELAY(i32 %75)
  %77 = or i32 %74, %76
  %78 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %79 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @WM97XX_SLT(i32 %80)
  %82 = or i32 %77, %81
  %83 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %84 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @WM97XX_RATE(i32 %85)
  %87 = or i32 %82, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @WM9713_PDEN, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %123

93:                                               ; preds = %2
  %94 = load i32, i32* @WM9713_CTC, align 4
  %95 = load i32, i32* @WM9713_COO, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @WM97XX_SLEN, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @WM9713_PDEN, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %109 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %111, align 8
  %113 = icmp ne i32 (%struct.wm97xx*)* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %93
  %115 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %116 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %118, align 8
  %120 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %121 = call i32 %119(%struct.wm97xx* %120)
  br label %122

122:                                              ; preds = %114, %93
  br label %123

123:                                              ; preds = %122, %65
  %124 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %125 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @wm97xx_reg_write(%struct.wm97xx* %124, i32 %125, i32 %126)
  %128 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %129 = load i32, i32* @AC97_WM9713_DIG2, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @wm97xx_reg_write(%struct.wm97xx* %128, i32 %129, i32 %130)
  %132 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %133 = load i32, i32* @AC97_WM9713_DIG3, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @wm97xx_reg_write(%struct.wm97xx* %132, i32 %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %123, %43
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @WM97XX_DELAY(i32) #1

declare dso_local i32 @WM97XX_SLT(i32) #1

declare dso_local i32 @WM97XX_RATE(i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
