; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9713.c_wm9713_poll_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9713.c_wm9713_poll_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@delay = common dso_local global i32 0, align 4
@WM97XX_PEN_DOWN = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER_RD = common dso_local global i32 0, align 4
@RC_PENUP = common dso_local global i32 0, align 4
@AC97_WM9713_DIG1 = common dso_local global i32 0, align 4
@WM9713_ADCSEL_MASK = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_MASK = common dso_local global i32 0, align 4
@WM9713_POLL = common dso_local global i32 0, align 4
@AC97_LINK_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"adc sample timeout\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"adc wrong sample, wanted %x got %x\00", align 1
@RC_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, i32, i32*)* @wm9713_poll_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_poll_sample(%struct.wm97xx* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm97xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @delay, align 4
  %13 = mul nsw i32 5, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %21 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %26 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %27 = call i32 @wm97xx_reg_read(%struct.wm97xx* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @RC_PENUP, align 4
  store i32 %33, i32* %4, align 4
  br label %174

34:                                               ; preds = %24
  %35 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %36 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %19, %3
  %38 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %39 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %40 = call i32 @wm97xx_reg_read(%struct.wm97xx* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @WM9713_ADCSEL_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %47 = and i32 %45, %46
  %48 = ashr i32 %47, 12
  %49 = shl i32 1, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %53 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %37
  %57 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %58 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = icmp ne i32 (i32)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %65 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 %68(i32 %69)
  br label %71

71:                                               ; preds = %63, %56, %37
  %72 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %73 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @WM9713_POLL, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @wm97xx_reg_write(%struct.wm97xx* %72, i32 %73, i32 %76)
  %78 = load i32, i32* @delay, align 4
  %79 = call i32 @poll_delay(i32 %78)
  br label %80

80:                                               ; preds = %92, %71
  %81 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %82 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %83 = call i32 @wm97xx_reg_read(%struct.wm97xx* %81, i32 %82)
  %84 = load i32, i32* @WM9713_POLL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %87, %80
  %91 = phi i1 [ false, %80 ], [ %89, %87 ]
  br i1 %91, label %92, label %97

92:                                               ; preds = %90
  %93 = load i32, i32* @AC97_LINK_FRAME, align 4
  %94 = call i32 @udelay(i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %9, align 4
  br label %80

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %102 = call i64 @is_pden(%struct.wm97xx* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %106 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  br label %112

107:                                              ; preds = %100
  %108 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %109 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @dev_dbg(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i32, i32* @RC_PENUP, align 4
  store i32 %113, i32* %4, align 4
  br label %174

114:                                              ; preds = %97
  %115 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %116 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %117 = call i32 @wm97xx_reg_read(%struct.wm97xx* %115, i32 %116)
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %120 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = icmp ne %struct.TYPE_2__* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %125 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32 (i32)*, i32 (i32)** %127, align 8
  %129 = icmp ne i32 (i32)* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %123
  %131 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %132 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32 (i32)*, i32 (i32)** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 %135(i32 %136)
  br label %138

138:                                              ; preds = %130, %123, %114
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %6, align 4
  %142 = xor i32 %140, %141
  %143 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %138
  %147 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %148 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %156 = and i32 %154, %155
  %157 = call i32 (i32, i8*, ...) @dev_dbg(i32 %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %156)
  %158 = load i32, i32* @RC_PENUP, align 4
  store i32 %158, i32* %4, align 4
  br label %174

159:                                              ; preds = %138
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %162
  %169 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %170 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  %171 = load i32, i32* @RC_PENUP, align 4
  store i32 %171, i32* %4, align 4
  br label %174

172:                                              ; preds = %162, %159
  %173 = load i32, i32* @RC_VALID, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %168, %146, %112, %32
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @poll_delay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @is_pden(%struct.wm97xx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
