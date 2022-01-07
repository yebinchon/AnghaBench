; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ns2.c_create_ns2_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ns2.c_create_ns2_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ns2_led_data = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.ns2_led = type { i32, i32, i32, i32, i32, i32 }

@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: failed to setup command GPIO\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: failed to setup slow GPIO\0A\00", align 1
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@ns2_led_groups = common dso_local global i32 0, align 4
@ns2_led_set_blocking = common dso_local global i32 0, align 4
@ns2_led_set = common dso_local global i32 0, align 4
@NS_V2_LED_SATA = common dso_local global i32 0, align 4
@NS_V2_LED_OFF = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ns2_led_data*, %struct.ns2_led*)* @create_ns2_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ns2_led(%struct.platform_device* %0, %struct.ns2_led_data* %1, %struct.ns2_led* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.ns2_led_data*, align 8
  %7 = alloca %struct.ns2_led*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.ns2_led_data* %1, %struct.ns2_led_data** %6, align 8
  store %struct.ns2_led* %2, %struct.ns2_led** %7, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %13 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %16 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @gpio_get_value_cansleep(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %27 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @devm_gpio_request_one(i32* %11, i32 %14, i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %36 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %182

40:                                               ; preds = %24
  %41 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %44 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %47 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @gpio_get_value_cansleep(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  br label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %58 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @devm_gpio_request_one(i32* %42, i32 %45, i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %67 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %182

71:                                               ; preds = %55
  %72 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %73 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %72, i32 0, i32 7
  %74 = call i32 @rwlock_init(i32* %73)
  %75 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %76 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %79 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 7
  store i32 %77, i32* %80, align 4
  %81 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %82 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %85 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 8
  %87 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %88 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  store i32* null, i32** %89, align 8
  %90 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %91 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %92 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @ns2_led_groups, align 4
  %97 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %98 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %101 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %104 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %106 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %109 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %111 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @gpio_cansleep(i32 %112)
  %114 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %115 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @gpio_cansleep(i32 %116)
  %118 = or i32 %113, %117
  %119 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %120 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %122 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %71
  %126 = load i32, i32* @ns2_led_set_blocking, align 4
  %127 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %128 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 8
  br label %135

130:                                              ; preds = %71
  %131 = load i32, i32* @ns2_led_set, align 4
  %132 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %133 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %137 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %140 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ns2_led*, %struct.ns2_led** %7, align 8
  %142 = getelementptr inbounds %struct.ns2_led, %struct.ns2_led* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %145 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %147 = call i32 @ns2_led_get_mode(%struct.ns2_led_data* %146, i32* %9)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %135
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %4, align 4
  br label %182

152:                                              ; preds = %135
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @NS_V2_LED_SATA, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 1, i32 0
  %158 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %159 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @NS_V2_LED_OFF, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %152
  %164 = load i32, i32* @LED_OFF, align 4
  br label %167

165:                                              ; preds = %152
  %166 = load i32, i32* @LED_FULL, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %170 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load %struct.ns2_led_data*, %struct.ns2_led_data** %6, align 8
  %175 = getelementptr inbounds %struct.ns2_led_data, %struct.ns2_led_data* %174, i32 0, i32 2
  %176 = call i32 @led_classdev_register(i32* %173, %struct.TYPE_2__* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %167
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %4, align 4
  br label %182

181:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %179, %150, %63, %32
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i32) #1

declare dso_local i64 @gpio_get_value_cansleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @gpio_cansleep(i32) #1

declare dso_local i32 @ns2_led_get_mode(%struct.ns2_led_data*, i32*) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
