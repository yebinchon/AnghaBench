; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_tca6507_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_tca6507_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tca6507_chip = type { i32, %struct.tca6507_led*, i32, i32, %struct.i2c_client* }
%struct.tca6507_led = type { i32, i32, %struct.TYPE_7__, %struct.tca6507_chip* }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.tca6507_platform_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NUM_LEDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Need %d entries in platform-data list\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tca6507_work = common dso_local global i32 0, align 4
@tca6507_brightness_set = common dso_local global i32 0, align 4
@tca6507_blink_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tca6507_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca6507_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tca6507_chip*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.tca6507_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tca6507_led*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call %struct.tca6507_platform_data* @dev_get_platdata(i32* %16)
  store %struct.tca6507_platform_data* %17, %struct.tca6507_platform_data** %8, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %19 = load i32, i32* @I2C_FUNC_I2C, align 4
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %201

25:                                               ; preds = %2
  %26 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %27 = icmp ne %struct.tca6507_platform_data* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %30 = getelementptr inbounds %struct.tca6507_platform_data, %struct.tca6507_platform_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NUM_LEDS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %28, %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call %struct.tca6507_platform_data* @tca6507_led_dt_init(%struct.i2c_client* %36)
  store %struct.tca6507_platform_data* %37, %struct.tca6507_platform_data** %8, align 8
  %38 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %39 = call i64 @IS_ERR(%struct.tca6507_platform_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* @NUM_LEDS, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %47 = call i32 @PTR_ERR(%struct.tca6507_platform_data* %46)
  store i32 %47, i32* %3, align 4
  br label %201

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %28
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.tca6507_chip* @devm_kzalloc(i32* %51, i32 32, i32 %52)
  store %struct.tca6507_chip* %53, %struct.tca6507_chip** %6, align 8
  %54 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %55 = icmp ne %struct.tca6507_chip* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %201

59:                                               ; preds = %49
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %62 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %61, i32 0, i32 4
  store %struct.i2c_client* %60, %struct.i2c_client** %62, align 8
  %63 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %64 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %63, i32 0, i32 2
  %65 = load i32, i32* @tca6507_work, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %68 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %67, i32 0, i32 3
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %72 = call i32 @i2c_set_clientdata(%struct.i2c_client* %70, %struct.tca6507_chip* %71)
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %156, %59
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @NUM_LEDS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %159

77:                                               ; preds = %73
  %78 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %79 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %78, i32 0, i32 1
  %80 = load %struct.tca6507_led*, %struct.tca6507_led** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %80, i64 %82
  store %struct.tca6507_led* %83, %struct.tca6507_led** %11, align 8
  %84 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %85 = load %struct.tca6507_led*, %struct.tca6507_led** %11, align 8
  %86 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %85, i32 0, i32 3
  store %struct.tca6507_chip* %84, %struct.tca6507_chip** %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.tca6507_led*, %struct.tca6507_led** %11, align 8
  %89 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %91 = getelementptr inbounds %struct.tca6507_platform_data, %struct.tca6507_platform_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %155

100:                                              ; preds = %77
  %101 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %102 = getelementptr inbounds %struct.tca6507_platform_data, %struct.tca6507_platform_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %155, label %111

111:                                              ; preds = %100
  %112 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %113 = getelementptr inbounds %struct.tca6507_platform_data, %struct.tca6507_platform_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tca6507_led*, %struct.tca6507_led** %11, align 8
  %122 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  %124 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %125 = getelementptr inbounds %struct.tca6507_platform_data, %struct.tca6507_platform_data* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.tca6507_led*, %struct.tca6507_led** %11, align 8
  %134 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* @tca6507_brightness_set, align 4
  %137 = load %struct.tca6507_led*, %struct.tca6507_led** %11, align 8
  %138 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @tca6507_blink_set, align 4
  %141 = load %struct.tca6507_led*, %struct.tca6507_led** %11, align 8
  %142 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 8
  %144 = load %struct.tca6507_led*, %struct.tca6507_led** %11, align 8
  %145 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %144, i32 0, i32 1
  store i32 -1, i32* %145, align 4
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = load %struct.tca6507_led*, %struct.tca6507_led** %11, align 8
  %149 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %148, i32 0, i32 2
  %150 = call i32 @led_classdev_register(i32* %147, %struct.TYPE_7__* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %111
  br label %173

154:                                              ; preds = %111
  br label %155

155:                                              ; preds = %154, %100, %77
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %73

159:                                              ; preds = %73
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %162 = load %struct.tca6507_platform_data*, %struct.tca6507_platform_data** %8, align 8
  %163 = call i32 @tca6507_probe_gpios(%struct.i2c_client* %160, %struct.tca6507_chip* %161, %struct.tca6507_platform_data* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %173

167:                                              ; preds = %159
  %168 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %169 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %168, i32 0, i32 0
  store i32 127, i32* %169, align 8
  %170 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %171 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %170, i32 0, i32 2
  %172 = call i32 @schedule_work(i32* %171)
  store i32 0, i32* %3, align 4
  br label %201

173:                                              ; preds = %166, %153
  br label %174

174:                                              ; preds = %198, %173
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %10, align 4
  %177 = icmp ne i32 %175, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %174
  %179 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %180 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %179, i32 0, i32 1
  %181 = load %struct.tca6507_led*, %struct.tca6507_led** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %181, i64 %183
  %185 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %178
  %190 = load %struct.tca6507_chip*, %struct.tca6507_chip** %6, align 8
  %191 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %190, i32 0, i32 1
  %192 = load %struct.tca6507_led*, %struct.tca6507_led** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %192, i64 %194
  %196 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %195, i32 0, i32 2
  %197 = call i32 @led_classdev_unregister(%struct.TYPE_7__* %196)
  br label %198

198:                                              ; preds = %189, %178
  br label %174

199:                                              ; preds = %174
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %167, %56, %41, %22
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.tca6507_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.tca6507_platform_data* @tca6507_led_dt_init(%struct.i2c_client*) #1

declare dso_local i64 @IS_ERR(%struct.tca6507_platform_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.tca6507_platform_data*) #1

declare dso_local %struct.tca6507_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tca6507_chip*) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @tca6507_probe_gpios(%struct.i2c_client*, %struct.tca6507_chip*, %struct.tca6507_platform_data*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
