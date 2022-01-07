; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_create_gpio_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_create_gpio_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_led = type { i64, i64, i64, i64, i32, i32 }
%struct.gpio_led_data = type { %struct.TYPE_3__, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.led_init_data = type { %struct.fwnode_handle* }

@gpio_led_set = common dso_local global i32 0, align 4
@gpio_led_set_blocking = common dso_local global i32 0, align 4
@gpio_blink_set = common dso_local global i32 0, align 4
@LEDS_GPIO_DEFSTATE_KEEP = common dso_local global i64 0, align 8
@LEDS_GPIO_DEFSTATE_ON = common dso_local global i64 0, align 8
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@LED_PANIC_INDICATOR = common dso_local global i32 0, align 4
@LED_RETAIN_AT_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_led*, %struct.gpio_led_data*, %struct.device*, %struct.fwnode_handle*, i64)* @create_gpio_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_gpio_led(%struct.gpio_led* %0, %struct.gpio_led_data* %1, %struct.device* %2, %struct.fwnode_handle* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_led*, align 8
  %8 = alloca %struct.gpio_led_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.fwnode_handle*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.led_init_data, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gpio_led* %0, %struct.gpio_led** %7, align 8
  store %struct.gpio_led_data* %1, %struct.gpio_led_data** %8, align 8
  store %struct.device* %2, %struct.device** %9, align 8
  store %struct.fwnode_handle* %3, %struct.fwnode_handle** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = bitcast %struct.led_init_data* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %17 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %20 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  store i32 %18, i32* %21, align 4
  %22 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %23 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gpiod_cansleep(i32 %24)
  %26 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %27 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %29 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @gpio_led_set, align 4
  %34 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %35 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 8
  br label %42

37:                                               ; preds = %5
  %38 = load i32, i32* @gpio_led_set_blocking, align 4
  %39 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %40 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %44 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %50 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @gpio_blink_set, align 4
  %52 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %53 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %57 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LEDS_GPIO_DEFSTATE_KEEP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %63 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @gpiod_get_value_cansleep(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %160

70:                                               ; preds = %61
  br label %78

71:                                               ; preds = %55
  %72 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %73 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LEDS_GPIO_DEFSTATE_ON, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %71, %70
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @LED_FULL, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @LED_OFF, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %88 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %91 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %96 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %97 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %85
  %102 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %103 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i32, i32* @LED_PANIC_INDICATOR, align 4
  %108 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %109 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %115 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, i32* @LED_RETAIN_AT_SHUTDOWN, align 4
  %120 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %121 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %119
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %118, %113
  %126 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %127 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @gpiod_direction_output(i32 %128, i32 %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %6, align 4
  br label %160

135:                                              ; preds = %125
  %136 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %137 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %142 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %145 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load %struct.device*, %struct.device** %9, align 8
  %148 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %149 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %148, i32 0, i32 0
  %150 = call i32 @devm_led_classdev_register(%struct.device* %147, %struct.TYPE_3__* %149)
  store i32 %150, i32* %13, align 4
  br label %158

151:                                              ; preds = %135
  %152 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  %153 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %12, i32 0, i32 0
  store %struct.fwnode_handle* %152, %struct.fwnode_handle** %153, align 8
  %154 = load %struct.device*, %struct.device** %9, align 8
  %155 = load %struct.gpio_led_data*, %struct.gpio_led_data** %8, align 8
  %156 = getelementptr inbounds %struct.gpio_led_data, %struct.gpio_led_data* %155, i32 0, i32 0
  %157 = call i32 @devm_led_classdev_register_ext(%struct.device* %154, %struct.TYPE_3__* %156, %struct.led_init_data* %12)
  store i32 %157, i32* %13, align 4
  br label %158

158:                                              ; preds = %151, %140
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %158, %133, %68
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gpiod_cansleep(i32) #2

declare dso_local i32 @gpiod_get_value_cansleep(i32) #2

declare dso_local i32 @gpiod_direction_output(i32, i32) #2

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_3__*) #2

declare dso_local i32 @devm_led_classdev_register_ext(%struct.device*, %struct.TYPE_3__*, %struct.led_init_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
