; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9052_tsi.c_da9052_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9052_tsi.c_da9052_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.da9052 = type { i32 }
%struct.da9052_tsi = type { i32, %struct.da9052*, %struct.input_dev*, i32 }
%struct.input_dev = type { i8*, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9052_ts_pen_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Dialog DA9052 TouchScreen Driver\00", align 1
@da9052_ts_input_open = common dso_local global i32 0, align 4
@da9052_ts_input_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@DA9052_TSI_CONT_A_REG = common dso_local global i32 0, align 4
@DA9052_IRQ_PENDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pendown-irq\00", align 1
@da9052_ts_pendwn_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to register PENDWN IRQ: %d\0A\00", align 1
@DA9052_IRQ_TSIREADY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"tsiready-irq\00", align 1
@da9052_ts_datardy_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to register TSIRDY IRQ :%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9052_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_ts_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9052*, align 8
  %5 = alloca %struct.da9052_tsi*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.da9052* @dev_get_drvdata(i32 %11)
  store %struct.da9052* %12, %struct.da9052** %4, align 8
  %13 = load %struct.da9052*, %struct.da9052** %4, align 8
  %14 = icmp ne %struct.da9052* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %182

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.da9052_tsi* @kzalloc(i32 32, i32 %19)
  store %struct.da9052_tsi* %20, %struct.da9052_tsi** %5, align 8
  %21 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %21, %struct.input_dev** %6, align 8
  %22 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %23 = icmp ne %struct.da9052_tsi* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %26 = icmp ne %struct.input_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %176

30:                                               ; preds = %24
  %31 = load %struct.da9052*, %struct.da9052** %4, align 8
  %32 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %33 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %32, i32 0, i32 1
  store %struct.da9052* %31, %struct.da9052** %33, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %36 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %35, i32 0, i32 2
  store %struct.input_dev* %34, %struct.input_dev** %36, align 8
  %37 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %38 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %40 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %39, i32 0, i32 3
  %41 = load i32, i32* @da9052_ts_pen_work, align 4
  %42 = call i32 @INIT_DELAYED_WORK(i32* %40, i32 %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 257, i32* %45, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 5558, i32* %48, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 36946, i32* %51, align 8
  %52 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %58, align 8
  %59 = load i32, i32* @da9052_ts_input_open, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @da9052_ts_input_close, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @EV_ABS, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__set_bit(i32 %65, i32 %68)
  %70 = load i32, i32* @EV_KEY, align 4
  %71 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %72 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__set_bit(i32 %70, i32 %73)
  %75 = load i32, i32* @BTN_TOUCH, align 4
  %76 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @__set_bit(i32 %75, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %81 = load i32, i32* @ABS_X, align 4
  %82 = call i32 @input_set_abs_params(%struct.input_dev* %80, i32 %81, i32 0, i32 1023, i32 0, i32 0)
  %83 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %84 = load i32, i32* @ABS_Y, align 4
  %85 = call i32 @input_set_abs_params(%struct.input_dev* %83, i32 %84, i32 0, i32 1023, i32 0, i32 0)
  %86 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %87 = load i32, i32* @ABS_PRESSURE, align 4
  %88 = call i32 @input_set_abs_params(%struct.input_dev* %86, i32 %87, i32 0, i32 1023, i32 0, i32 0)
  %89 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %90 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %91 = call i32 @input_set_drvdata(%struct.input_dev* %89, %struct.da9052_tsi* %90)
  %92 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %93 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %92, i32 0, i32 1
  %94 = load %struct.da9052*, %struct.da9052** %93, align 8
  %95 = load i32, i32* @DA9052_TSI_CONT_A_REG, align 4
  %96 = call i32 @da9052_reg_update(%struct.da9052* %94, i32 %95, i32 2, i32 0)
  %97 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %98 = call i32 @da9052_ts_adc_toggle(%struct.da9052_tsi* %97, i32 0)
  %99 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %100 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %99, i32 0, i32 1
  %101 = load %struct.da9052*, %struct.da9052** %100, align 8
  %102 = load i32, i32* @DA9052_IRQ_PENDOWN, align 4
  %103 = load i32, i32* @da9052_ts_pendwn_irq, align 4
  %104 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %105 = call i32 @da9052_request_irq(%struct.da9052* %101, i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %103, %struct.da9052_tsi* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %30
  %109 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %110 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %109, i32 0, i32 1
  %111 = load %struct.da9052*, %struct.da9052** %110, align 8
  %112 = getelementptr inbounds %struct.da9052, %struct.da9052* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %176

116:                                              ; preds = %30
  %117 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %118 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %117, i32 0, i32 1
  %119 = load %struct.da9052*, %struct.da9052** %118, align 8
  %120 = load i32, i32* @DA9052_IRQ_TSIREADY, align 4
  %121 = load i32, i32* @da9052_ts_datardy_irq, align 4
  %122 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %123 = call i32 @da9052_request_irq(%struct.da9052* %119, i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %121, %struct.da9052_tsi* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %116
  %127 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %128 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %127, i32 0, i32 1
  %129 = load %struct.da9052*, %struct.da9052** %128, align 8
  %130 = getelementptr inbounds %struct.da9052, %struct.da9052* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  br label %169

134:                                              ; preds = %116
  %135 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %136 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %135, i32 0, i32 1
  %137 = load %struct.da9052*, %struct.da9052** %136, align 8
  %138 = load i32, i32* @DA9052_IRQ_PENDOWN, align 4
  %139 = call i32 @da9052_disable_irq(%struct.da9052* %137, i32 %138)
  %140 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %141 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %140, i32 0, i32 1
  %142 = load %struct.da9052*, %struct.da9052** %141, align 8
  %143 = load i32, i32* @DA9052_IRQ_TSIREADY, align 4
  %144 = call i32 @da9052_disable_irq(%struct.da9052* %142, i32 %143)
  %145 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %146 = call i32 @da9052_configure_tsi(%struct.da9052_tsi* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %134
  br label %162

150:                                              ; preds = %134
  %151 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %152 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %151, i32 0, i32 2
  %153 = load %struct.input_dev*, %struct.input_dev** %152, align 8
  %154 = call i32 @input_register_device(%struct.input_dev* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %162

158:                                              ; preds = %150
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %161 = call i32 @platform_set_drvdata(%struct.platform_device* %159, %struct.da9052_tsi* %160)
  store i32 0, i32* %2, align 4
  br label %182

162:                                              ; preds = %157, %149
  %163 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %164 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %163, i32 0, i32 1
  %165 = load %struct.da9052*, %struct.da9052** %164, align 8
  %166 = load i32, i32* @DA9052_IRQ_TSIREADY, align 4
  %167 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %168 = call i32 @da9052_free_irq(%struct.da9052* %165, i32 %166, %struct.da9052_tsi* %167)
  br label %169

169:                                              ; preds = %162, %126
  %170 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %171 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %170, i32 0, i32 1
  %172 = load %struct.da9052*, %struct.da9052** %171, align 8
  %173 = load i32, i32* @DA9052_IRQ_PENDOWN, align 4
  %174 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %175 = call i32 @da9052_free_irq(%struct.da9052* %172, i32 %173, %struct.da9052_tsi* %174)
  br label %176

176:                                              ; preds = %169, %108, %27
  %177 = load %struct.da9052_tsi*, %struct.da9052_tsi** %5, align 8
  %178 = call i32 @kfree(%struct.da9052_tsi* %177)
  %179 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %180 = call i32 @input_free_device(%struct.input_dev* %179)
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %176, %158, %15
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.da9052* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9052_tsi* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.da9052_tsi*) #1

declare dso_local i32 @da9052_reg_update(%struct.da9052*, i32, i32, i32) #1

declare dso_local i32 @da9052_ts_adc_toggle(%struct.da9052_tsi*, i32) #1

declare dso_local i32 @da9052_request_irq(%struct.da9052*, i32, i8*, i32, %struct.da9052_tsi*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @da9052_disable_irq(%struct.da9052*, i32) #1

declare dso_local i32 @da9052_configure_tsi(%struct.da9052_tsi*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9052_tsi*) #1

declare dso_local i32 @da9052_free_irq(%struct.da9052*, i32, %struct.da9052_tsi*) #1

declare dso_local i32 @kfree(%struct.da9052_tsi*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
