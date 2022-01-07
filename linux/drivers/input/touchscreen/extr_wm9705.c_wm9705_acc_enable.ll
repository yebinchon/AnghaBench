; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9705.c_wm9705_acc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9705.c_wm9705_acc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)* }

@WM97XX_CM_RATE_MASK = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_MASK = common dso_local global i32 0, align 4
@WM97XX_DELAY_MASK = common dso_local global i32 0, align 4
@WM97XX_SLT_MASK = common dso_local global i32 0, align 4
@WM97XX_CTC = common dso_local global i32 0, align 4
@WM97XX_COO = common dso_local global i32 0, align 4
@WM97XX_SLEN = common dso_local global i32 0, align 4
@delay = common dso_local global i32 0, align 4
@pil = common dso_local global i64 0, align 8
@WM97XX_ADCSEL_PRES = common dso_local global i32 0, align 4
@WM9705_PDEN = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER1 = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, i32)* @wm9705_acc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9705_acc_enable(%struct.wm97xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %10 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %15 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %2
  %22 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %23 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %25, align 8
  %27 = icmp ne i32 (%struct.wm97xx*)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %30 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %32, align 8
  %34 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %35 = call i32 %33(%struct.wm97xx* %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %118

39:                                               ; preds = %28, %21
  %40 = load i32, i32* @WM97XX_CM_RATE_MASK, align 4
  %41 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @WM97XX_DELAY_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WM97XX_SLT_MASK, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @WM97XX_CTC, align 4
  %51 = load i32, i32* @WM97XX_COO, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @WM97XX_SLEN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @delay, align 4
  %56 = call i32 @WM97XX_DELAY(i32 %55)
  %57 = or i32 %54, %56
  %58 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %59 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @WM97XX_SLT(i32 %60)
  %62 = or i32 %57, %61
  %63 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %64 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @WM97XX_RATE(i32 %65)
  %67 = or i32 %62, %66
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i64, i64* @pil, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %39
  %73 = load i32, i32* @WM97XX_ADCSEL_PRES, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %39
  %77 = load i32, i32* @WM9705_PDEN, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %108

80:                                               ; preds = %2
  %81 = load i32, i32* @WM97XX_CTC, align 4
  %82 = load i32, i32* @WM97XX_COO, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @WM97XX_SLEN, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @WM9705_PDEN, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %94 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %96, align 8
  %98 = icmp ne i32 (%struct.wm97xx*)* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %80
  %100 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %101 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %103, align 8
  %105 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %106 = call i32 %104(%struct.wm97xx* %105)
  br label %107

107:                                              ; preds = %99, %80
  br label %108

108:                                              ; preds = %107, %76
  %109 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %110 = load i32, i32* @AC97_WM97XX_DIGITISER1, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @wm97xx_reg_write(%struct.wm97xx* %109, i32 %110, i32 %111)
  %113 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %114 = load i32, i32* @AC97_WM97XX_DIGITISER2, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @wm97xx_reg_write(%struct.wm97xx* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %108, %37
  %119 = load i32, i32* %3, align 4
  ret i32 %119
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
