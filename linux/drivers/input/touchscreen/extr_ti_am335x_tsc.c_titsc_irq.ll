; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.titsc = type { i32, i32, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@REG_RAWIRQSTATUS = common dso_local global i32 0, align 4
@IRQENB_HW_PEN = common dso_local global i32 0, align 4
@IRQENB_PENUP = common dso_local global i32 0, align 4
@REG_ADCFSM = common dso_local global i32 0, align 4
@ADCFSM_STEPID = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@IRQENB_EOS = common dso_local global i32 0, align 4
@IRQENB_FIFO0THRES = common dso_local global i32 0, align 4
@MAX_12BIT = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@REG_IRQSTATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @titsc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titsc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.titsc*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.titsc*
  store %struct.titsc* %17, %struct.titsc** %6, align 8
  %18 = load %struct.titsc*, %struct.titsc** %6, align 8
  %19 = getelementptr inbounds %struct.titsc, %struct.titsc* %18, i32 0, i32 5
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.titsc*, %struct.titsc** %6, align 8
  %22 = load i32, i32* @REG_RAWIRQSTATUS, align 4
  %23 = call i32 @titsc_readl(%struct.titsc* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IRQENB_HW_PEN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.titsc*, %struct.titsc** %6, align 8
  %30 = getelementptr inbounds %struct.titsc, %struct.titsc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @IRQENB_HW_PEN, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load %struct.titsc*, %struct.titsc** %6, align 8
  %35 = getelementptr inbounds %struct.titsc, %struct.titsc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pm_stay_awake(i32 %36)
  br label %38

38:                                               ; preds = %28, %2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @IRQENB_PENUP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %38
  %44 = load %struct.titsc*, %struct.titsc** %6, align 8
  %45 = load i32, i32* @REG_ADCFSM, align 4
  %46 = call i32 @titsc_readl(%struct.titsc* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ADCFSM_STEPID, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.titsc*, %struct.titsc** %6, align 8
  %52 = getelementptr inbounds %struct.titsc, %struct.titsc* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %54 = load i32, i32* @BTN_TOUCH, align 4
  %55 = call i32 @input_report_key(%struct.input_dev* %53, i32 %54, i32 0)
  %56 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %57 = load i32, i32* @ABS_PRESSURE, align 4
  %58 = call i32 @input_report_abs(%struct.input_dev* %56, i32 %57, i32 0)
  %59 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %60 = call i32 @input_sync(%struct.input_dev* %59)
  %61 = load %struct.titsc*, %struct.titsc** %6, align 8
  %62 = getelementptr inbounds %struct.titsc, %struct.titsc* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pm_relax(i32 %63)
  br label %68

65:                                               ; preds = %43
  %66 = load %struct.titsc*, %struct.titsc** %6, align 8
  %67 = getelementptr inbounds %struct.titsc, %struct.titsc* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %50
  %69 = load i32, i32* @IRQENB_PENUP, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %38
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @IRQENB_EOS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @IRQENB_EOS, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @IRQENB_FIFO0THRES, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %143

86:                                               ; preds = %81
  %87 = load %struct.titsc*, %struct.titsc** %6, align 8
  %88 = call i32 @titsc_read_coordinates(%struct.titsc* %87, i32* %11, i32* %12, i32* %13, i32* %14)
  %89 = load %struct.titsc*, %struct.titsc** %6, align 8
  %90 = getelementptr inbounds %struct.titsc, %struct.titsc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %139

93:                                               ; preds = %86
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %139

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %139

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sub i32 %100, %101
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %15, align 4
  %105 = mul i32 %104, %103
  store i32 %105, i32* %15, align 4
  %106 = load %struct.titsc*, %struct.titsc** %6, align 8
  %107 = getelementptr inbounds %struct.titsc, %struct.titsc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = mul i32 %109, %108
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = udiv i32 %112, %111
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add i32 %114, 2047
  %116 = lshr i32 %115, 12
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @MAX_12BIT, align 4
  %119 = icmp ule i32 %117, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %99
  %121 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %122 = load i32, i32* @ABS_X, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @input_report_abs(%struct.input_dev* %121, i32 %122, i32 %123)
  %125 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %126 = load i32, i32* @ABS_Y, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @input_report_abs(%struct.input_dev* %125, i32 %126, i32 %127)
  %129 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %130 = load i32, i32* @ABS_PRESSURE, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @input_report_abs(%struct.input_dev* %129, i32 %130, i32 %131)
  %133 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %134 = load i32, i32* @BTN_TOUCH, align 4
  %135 = call i32 @input_report_key(%struct.input_dev* %133, i32 %134, i32 1)
  %136 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %137 = call i32 @input_sync(%struct.input_dev* %136)
  br label %138

138:                                              ; preds = %120, %99
  br label %139

139:                                              ; preds = %138, %96, %93, %86
  %140 = load i32, i32* @IRQENB_FIFO0THRES, align 4
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %139, %81
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  %147 = load %struct.titsc*, %struct.titsc** %6, align 8
  %148 = load i32, i32* @REG_IRQSTATUS, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @titsc_writel(%struct.titsc* %147, i32 %148, i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @IRQENB_EOS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %146
  %156 = load %struct.titsc*, %struct.titsc** %6, align 8
  %157 = getelementptr inbounds %struct.titsc, %struct.titsc* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.titsc*, %struct.titsc** %6, align 8
  %160 = getelementptr inbounds %struct.titsc, %struct.titsc* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @am335x_tsc_se_set_cache(i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %155, %146
  %164 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %164, i32* %3, align 4
  br label %167

165:                                              ; preds = %143
  %166 = load i32, i32* @IRQ_NONE, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @titsc_readl(%struct.titsc*, i32) #1

declare dso_local i32 @pm_stay_awake(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @pm_relax(i32) #1

declare dso_local i32 @titsc_read_coordinates(%struct.titsc*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @titsc_writel(%struct.titsc*, i32, i32) #1

declare dso_local i32 @am335x_tsc_se_set_cache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
