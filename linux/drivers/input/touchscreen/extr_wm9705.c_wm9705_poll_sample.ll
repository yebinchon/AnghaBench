; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9705.c_wm9705_poll_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9705.c_wm9705_poll_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@delay = common dso_local global i32 0, align 4
@WM97XX_PEN_DOWN = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER_RD = common dso_local global i32 0, align 4
@RC_PENUP = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER1 = common dso_local global i32 0, align 4
@WM97XX_ADCSEL_MASK = common dso_local global i32 0, align 4
@WM97XX_POLL = common dso_local global i32 0, align 4
@AC97_LINK_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"adc sample timeout\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"adc wrong sample, wanted %x got %x\00", align 1
@RC_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, i32, i32*)* @wm9705_poll_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9705_poll_sample(%struct.wm97xx* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm97xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @delay, align 4
  %12 = mul nsw i32 5, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %20 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %25 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %26 = call i32 @wm97xx_reg_read(%struct.wm97xx* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @RC_PENUP, align 4
  store i32 %32, i32* %4, align 4
  br label %164

33:                                               ; preds = %23
  %34 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %35 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %18, %3
  %37 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %38 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %43 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = icmp ne i32 (i32)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %50 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 %53(i32 %54)
  br label %56

56:                                               ; preds = %48, %41, %36
  %57 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %58 = load i32, i32* @AC97_WM97XX_DIGITISER1, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @WM97XX_POLL, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @delay, align 4
  %65 = call i32 @WM97XX_DELAY(i32 %64)
  %66 = or i32 %63, %65
  %67 = call i32 @wm97xx_reg_write(%struct.wm97xx* %57, i32 %58, i32 %66)
  %68 = load i32, i32* @delay, align 4
  %69 = call i32 @poll_delay(i32 %68)
  br label %70

70:                                               ; preds = %82, %56
  %71 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %72 = load i32, i32* @AC97_WM97XX_DIGITISER1, align 4
  %73 = call i32 @wm97xx_reg_read(%struct.wm97xx* %71, i32 %72)
  %74 = load i32, i32* @WM97XX_POLL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %77, %70
  %81 = phi i1 [ false, %70 ], [ %79, %77 ]
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = load i32, i32* @AC97_LINK_FRAME, align 4
  %84 = call i32 @udelay(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %8, align 4
  br label %70

87:                                               ; preds = %80
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %92 = call i64 @is_pden(%struct.wm97xx* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %96 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %102

97:                                               ; preds = %90
  %98 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %99 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %94
  %103 = load i32, i32* @RC_PENUP, align 4
  store i32 %103, i32* %4, align 4
  br label %164

104:                                              ; preds = %87
  %105 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %106 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %107 = call i32 @wm97xx_reg_read(%struct.wm97xx* %105, i32 %106)
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  %109 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %110 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = icmp ne %struct.TYPE_2__* %111, null
  br i1 %112, label %113, label %128

113:                                              ; preds = %104
  %114 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %115 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32 (i32)*, i32 (i32)** %117, align 8
  %119 = icmp ne i32 (i32)* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %122 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (i32)*, i32 (i32)** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 %125(i32 %126)
  br label %128

128:                                              ; preds = %120, %113, %104
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = xor i32 %130, %131
  %133 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %128
  %137 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %138 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @WM97XX_ADCSEL_MASK, align 4
  %146 = and i32 %144, %145
  %147 = call i32 (i32, i8*, ...) @dev_dbg(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %146)
  %148 = load i32, i32* @RC_PENUP, align 4
  store i32 %148, i32* %4, align 4
  br label %164

149:                                              ; preds = %128
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @WM97XX_PEN_DOWN, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = load %struct.wm97xx*, %struct.wm97xx** %5, align 8
  %160 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  %161 = load i32, i32* @RC_PENUP, align 4
  store i32 %161, i32* %4, align 4
  br label %164

162:                                              ; preds = %152, %149
  %163 = load i32, i32* @RC_VALID, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %158, %136, %102, %31
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @WM97XX_DELAY(i32) #1

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
