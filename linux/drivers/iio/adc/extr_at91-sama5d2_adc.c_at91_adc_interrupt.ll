; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { i32, i32, %struct.TYPE_4__*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@AT91_SAMA5D2_ISR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IMR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_XRDY = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_YRDY = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_PRDY = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_PEN = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_NOPEN = common dso_local global i32 0, align 4
@AT91_SAMA5D2_ISR_PENS = common dso_local global i32 0, align 4
@AT91_SAMA5D2_XPOSR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_YPOSR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_PRESSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unexpected irq occurred\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_adc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.at91_adc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.at91_adc_state* %14, %struct.at91_adc_state** %7, align 8
  %15 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %16 = load i32, i32* @AT91_SAMA5D2_ISR, align 4
  %17 = call i8* @at91_adc_readl(%struct.at91_adc_state* %15, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %20 = load i32, i32* @AT91_SAMA5D2_IMR, align 4
  %21 = call i8* @at91_adc_readl(%struct.at91_adc_state* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @AT91_SAMA5D2_IER_XRDY, align 4
  %24 = load i32, i32* @AT91_SAMA5D2_IER_YRDY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AT91_SAMA5D2_IER_PRDY, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %140

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AT91_SAMA5D2_IER_PEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %41 = call i32 @at91_adc_pen_detect_interrupt(%struct.at91_adc_state* %40)
  br label %138

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @AT91_SAMA5D2_IER_NOPEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %49 = call i32 @at91_adc_no_pen_detect_interrupt(%struct.at91_adc_state* %48)
  br label %137

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @AT91_SAMA5D2_ISR_PENS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = call i32 @at91_adc_touch_data_handler(%struct.iio_dev* %62)
  br label %136

64:                                               ; preds = %55, %50
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AT91_SAMA5D2_ISR_PENS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %71 = load i32, i32* @AT91_SAMA5D2_XPOSR, align 4
  %72 = call i8* @at91_adc_readl(%struct.at91_adc_state* %70, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %8, align 4
  %74 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %75 = load i32, i32* @AT91_SAMA5D2_YPOSR, align 4
  %76 = call i8* @at91_adc_readl(%struct.at91_adc_state* %74, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %79 = load i32, i32* @AT91_SAMA5D2_PRESSR, align 4
  %80 = call i8* @at91_adc_readl(%struct.at91_adc_state* %78, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %8, align 4
  br label %135

82:                                               ; preds = %64
  %83 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %84 = call i64 @iio_buffer_enabled(%struct.iio_dev* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %88 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @disable_irq_nosync(i32 %93)
  %95 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @iio_trigger_poll(i32 %97)
  br label %134

99:                                               ; preds = %86, %82
  %100 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %101 = call i64 @iio_buffer_enabled(%struct.iio_dev* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %105 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @disable_irq_nosync(i32 %110)
  %112 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %133

113:                                              ; preds = %103, %99
  %114 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %115 = call i64 @iio_buffer_enabled(%struct.iio_dev* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %113
  %118 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %119 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %120 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @at91_adc_readl(%struct.at91_adc_state* %118, i32 %123)
  %125 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %126 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %128 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.at91_adc_state*, %struct.at91_adc_state** %7, align 8
  %130 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %129, i32 0, i32 1
  %131 = call i32 @wake_up_interruptible(i32* %130)
  br label %132

132:                                              ; preds = %117, %113
  br label %133

133:                                              ; preds = %132, %109
  br label %134

134:                                              ; preds = %133, %92
  br label %135

135:                                              ; preds = %134, %69
  br label %136

136:                                              ; preds = %135, %61
  br label %137

137:                                              ; preds = %136, %47
  br label %138

138:                                              ; preds = %137, %39
  %139 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %32
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @at91_adc_pen_detect_interrupt(%struct.at91_adc_state*) #1

declare dso_local i32 @at91_adc_no_pen_detect_interrupt(%struct.at91_adc_state*) #1

declare dso_local i32 @at91_adc_touch_data_handler(%struct.iio_dev*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @iio_trigger_poll(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
