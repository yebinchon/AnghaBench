; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_create_event_for_4wire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_create_event_for_4wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25_tcq_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Dropped samples because of invalid index %d\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mx25_tcq_priv*, i32*, i32)* @mx25_tcq_create_event_for_4wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx25_tcq_create_event_for_4wire(%struct.mx25_tcq_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mx25_tcq_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mx25_tcq_priv* %0, %struct.mx25_tcq_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %47, %3
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %11, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MX25_ADCQ_FIFO_ID(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MX25_ADCQ_FIFO_DATA(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %40 [
    i32 1, label %32
    i32 2, label %34
    i32 3, label %36
    i32 5, label %38
  ]

32:                                               ; preds = %18
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %9, align 4
  br label %46

34:                                               ; preds = %18
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %7, align 4
  br label %46

36:                                               ; preds = %18
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %8, align 4
  br label %46

38:                                               ; preds = %18
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %10, align 4
  br label %46

40:                                               ; preds = %18
  %41 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %128

46:                                               ; preds = %38, %36, %34, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %128

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %62 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %59
  %66 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %67 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = udiv i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %72 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = udiv i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %77 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ABS_X, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @input_report_abs(i32 %78, i32 %79, i32 %80)
  %82 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %83 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ABS_Y, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @input_report_abs(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %89 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BTN_TOUCH, align 4
  %92 = call i32 @input_report_key(i32 %90, i32 %91, i32 1)
  %93 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %94 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @input_sync(i32 %95)
  %97 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %98 = call i32 @mx25_tcq_enable_fifo_irq(%struct.mx25_tcq_priv* %97)
  br label %127

99:                                               ; preds = %59, %53
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %102 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp uge i32 %100, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %108 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp uge i32 %106, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %113 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BTN_TOUCH, align 4
  %116 = call i32 @input_report_key(i32 %114, i32 %115, i32 0)
  %117 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %118 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @input_sync(i32 %119)
  %121 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %122 = call i32 @mx25_tcq_re_enable_touch_detection(%struct.mx25_tcq_priv* %121)
  br label %126

123:                                              ; preds = %105, %99
  %124 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %4, align 8
  %125 = call i32 @mx25_tcq_enable_fifo_irq(%struct.mx25_tcq_priv* %124)
  br label %126

126:                                              ; preds = %123, %111
  br label %127

127:                                              ; preds = %126, %65
  br label %128

128:                                              ; preds = %40, %127, %50
  ret void
}

declare dso_local i32 @MX25_ADCQ_FIFO_ID(i32) #1

declare dso_local i32 @MX25_ADCQ_FIFO_DATA(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @mx25_tcq_enable_fifo_irq(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @mx25_tcq_re_enable_touch_detection(%struct.mx25_tcq_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
