; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_psxpad-spi.c_psxpad_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_psxpad-spi.c_psxpad_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.psxpad = type { i32, %struct.spi_device*, %struct.input_polled_dev* }
%struct.input_polled_dev = type { i32, i32, i32, %struct.input_dev*, i32, i32, i32, %struct.psxpad* }
%struct.input_dev = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@psxpad_spi_poll_open = common dso_local global i32 0, align 4
@psxpad_spi_poll_close = common dso_local global i32 0, align 4
@psxpad_spi_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"PlayStation 1/2 joypad\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/input\00", align 1
@BUS_SPI = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_DPAD_UP = common dso_local global i32 0, align 4
@BTN_DPAD_DOWN = common dso_local global i32 0, align 4
@BTN_DPAD_LEFT = common dso_local global i32 0, align 4
@BTN_DPAD_RIGHT = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_TL = common dso_local global i32 0, align 4
@BTN_TR = common dso_local global i32 0, align 4
@BTN_TL2 = common dso_local global i32 0, align 4
@BTN_TR2 = common dso_local global i32 0, align 4
@BTN_THUMBL = common dso_local global i32 0, align 4
@BTN_THUMBR = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to register input poll device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @psxpad_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psxpad_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.psxpad*, align 8
  %5 = alloca %struct.input_polled_dev*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.psxpad* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.psxpad* %11, %struct.psxpad** %4, align 8
  %12 = load %struct.psxpad*, %struct.psxpad** %4, align 8
  %13 = icmp ne %struct.psxpad* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %182

17:                                               ; preds = %1
  %18 = call %struct.input_polled_dev* (...) @input_allocate_polled_device()
  store %struct.input_polled_dev* %18, %struct.input_polled_dev** %5, align 8
  %19 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %20 = icmp ne %struct.input_polled_dev* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %182

27:                                               ; preds = %17
  %28 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %29 = load %struct.psxpad*, %struct.psxpad** %4, align 8
  %30 = getelementptr inbounds %struct.psxpad, %struct.psxpad* %29, i32 0, i32 2
  store %struct.input_polled_dev* %28, %struct.input_polled_dev** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.psxpad*, %struct.psxpad** %4, align 8
  %33 = getelementptr inbounds %struct.psxpad, %struct.psxpad* %32, i32 0, i32 1
  store %struct.spi_device* %31, %struct.spi_device** %33, align 8
  %34 = load %struct.psxpad*, %struct.psxpad** %4, align 8
  %35 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %36 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %35, i32 0, i32 7
  store %struct.psxpad* %34, %struct.psxpad** %36, align 8
  %37 = load i32, i32* @psxpad_spi_poll_open, align 4
  %38 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %39 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @psxpad_spi_poll_close, align 4
  %41 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %42 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @psxpad_spi_poll, align 4
  %44 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %45 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %47 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %46, i32 0, i32 0
  store i32 16, i32* %47, align 8
  %48 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %49 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %48, i32 0, i32 1
  store i32 8, i32* %49, align 4
  %50 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %51 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %50, i32 0, i32 2
  store i32 32, i32* %51, align 8
  %52 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %53 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %52, i32 0, i32 3
  %54 = load %struct.input_dev*, %struct.input_dev** %53, align 8
  store %struct.input_dev* %54, %struct.input_dev** %6, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.psxpad*, %struct.psxpad** %4, align 8
  %58 = getelementptr inbounds %struct.psxpad, %struct.psxpad* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 1
  %62 = call i8* @dev_name(i32* %61)
  %63 = call i32 @snprintf(i32 %59, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @BUS_SPI, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %69 = load i32, i32* @ABS_X, align 4
  %70 = call i32 @input_set_abs_params(%struct.input_dev* %68, i32 %69, i32 0, i32 255, i32 0, i32 0)
  %71 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %72 = load i32, i32* @ABS_Y, align 4
  %73 = call i32 @input_set_abs_params(%struct.input_dev* %71, i32 %72, i32 0, i32 255, i32 0, i32 0)
  %74 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %75 = load i32, i32* @ABS_RX, align 4
  %76 = call i32 @input_set_abs_params(%struct.input_dev* %74, i32 %75, i32 0, i32 255, i32 0, i32 0)
  %77 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %78 = load i32, i32* @ABS_RY, align 4
  %79 = call i32 @input_set_abs_params(%struct.input_dev* %77, i32 %78, i32 0, i32 255, i32 0, i32 0)
  %80 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %81 = load i32, i32* @EV_KEY, align 4
  %82 = load i32, i32* @BTN_DPAD_UP, align 4
  %83 = call i32 @input_set_capability(%struct.input_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %85 = load i32, i32* @EV_KEY, align 4
  %86 = load i32, i32* @BTN_DPAD_DOWN, align 4
  %87 = call i32 @input_set_capability(%struct.input_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %89 = load i32, i32* @EV_KEY, align 4
  %90 = load i32, i32* @BTN_DPAD_LEFT, align 4
  %91 = call i32 @input_set_capability(%struct.input_dev* %88, i32 %89, i32 %90)
  %92 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %93 = load i32, i32* @EV_KEY, align 4
  %94 = load i32, i32* @BTN_DPAD_RIGHT, align 4
  %95 = call i32 @input_set_capability(%struct.input_dev* %92, i32 %93, i32 %94)
  %96 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %97 = load i32, i32* @EV_KEY, align 4
  %98 = load i32, i32* @BTN_A, align 4
  %99 = call i32 @input_set_capability(%struct.input_dev* %96, i32 %97, i32 %98)
  %100 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %101 = load i32, i32* @EV_KEY, align 4
  %102 = load i32, i32* @BTN_B, align 4
  %103 = call i32 @input_set_capability(%struct.input_dev* %100, i32 %101, i32 %102)
  %104 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %105 = load i32, i32* @EV_KEY, align 4
  %106 = load i32, i32* @BTN_X, align 4
  %107 = call i32 @input_set_capability(%struct.input_dev* %104, i32 %105, i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %109 = load i32, i32* @EV_KEY, align 4
  %110 = load i32, i32* @BTN_Y, align 4
  %111 = call i32 @input_set_capability(%struct.input_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %113 = load i32, i32* @EV_KEY, align 4
  %114 = load i32, i32* @BTN_TL, align 4
  %115 = call i32 @input_set_capability(%struct.input_dev* %112, i32 %113, i32 %114)
  %116 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %117 = load i32, i32* @EV_KEY, align 4
  %118 = load i32, i32* @BTN_TR, align 4
  %119 = call i32 @input_set_capability(%struct.input_dev* %116, i32 %117, i32 %118)
  %120 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %121 = load i32, i32* @EV_KEY, align 4
  %122 = load i32, i32* @BTN_TL2, align 4
  %123 = call i32 @input_set_capability(%struct.input_dev* %120, i32 %121, i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %125 = load i32, i32* @EV_KEY, align 4
  %126 = load i32, i32* @BTN_TR2, align 4
  %127 = call i32 @input_set_capability(%struct.input_dev* %124, i32 %125, i32 %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %129 = load i32, i32* @EV_KEY, align 4
  %130 = load i32, i32* @BTN_THUMBL, align 4
  %131 = call i32 @input_set_capability(%struct.input_dev* %128, i32 %129, i32 %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %133 = load i32, i32* @EV_KEY, align 4
  %134 = load i32, i32* @BTN_THUMBR, align 4
  %135 = call i32 @input_set_capability(%struct.input_dev* %132, i32 %133, i32 %134)
  %136 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %137 = load i32, i32* @EV_KEY, align 4
  %138 = load i32, i32* @BTN_SELECT, align 4
  %139 = call i32 @input_set_capability(%struct.input_dev* %136, i32 %137, i32 %138)
  %140 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %141 = load i32, i32* @EV_KEY, align 4
  %142 = load i32, i32* @BTN_START, align 4
  %143 = call i32 @input_set_capability(%struct.input_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.psxpad*, %struct.psxpad** %4, align 8
  %145 = call i32 @psxpad_spi_init_ff(%struct.psxpad* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %27
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %2, align 4
  br label %182

150:                                              ; preds = %27
  %151 = load i32, i32* @SPI_MODE_3, align 4
  %152 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %153 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  %154 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %155 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %154, i32 0, i32 0
  store i32 8, i32* %155, align 8
  %156 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %157 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i32 125000, i32* %159, align 4
  %160 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %161 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i32 125000, i32* %163, align 4
  %164 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %165 = call i32 @spi_setup(%struct.spi_device* %164)
  %166 = load %struct.psxpad*, %struct.psxpad** %4, align 8
  %167 = call i32 @psxpad_set_motor_level(%struct.psxpad* %166, i32 0, i32 0)
  %168 = load %struct.input_polled_dev*, %struct.input_polled_dev** %5, align 8
  %169 = call i32 @input_register_polled_device(%struct.input_polled_dev* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %150
  %173 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %174 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %173, i32 0, i32 1
  %175 = load i32, i32* %7, align 4
  %176 = call i32 (i32*, i8*, ...) @dev_err(i32* %174, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %2, align 4
  br label %182

178:                                              ; preds = %150
  %179 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %180 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %179, i32 0, i32 1
  %181 = call i32 @pm_runtime_enable(i32* %180)
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %172, %148, %21, %14
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.psxpad* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_polled_dev* @input_allocate_polled_device(...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @psxpad_spi_init_ff(%struct.psxpad*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @psxpad_set_motor_level(%struct.psxpad*, i32, i32) #1

declare dso_local i32 @input_register_polled_device(%struct.input_polled_dev*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
