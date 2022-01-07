; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl319x.c_is31fl319x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl319x.c_is31fl319x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.is31fl319x_chip = type { i32, %struct.is31fl319x_led*, %struct.TYPE_3__*, i32, i32, %struct.i2c_client* }
%struct.is31fl319x_led = type { i64, %struct.TYPE_4__, %struct.is31fl319x_chip*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IS31FL319X_CURRENT_MAX = common dso_local global i64 0, align 8
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@IS31FL319X_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"no response from chip write: err = %d\0A\00", align 1
@IS31FL319X_CONFIG2 = common dso_local global i32 0, align 4
@is31fl319x_brightness_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @is31fl319x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl319x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.is31fl319x_chip*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.is31fl319x_led*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load i64, i64* @IS31FL319X_CURRENT_MAX, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_FUNC_I2C, align 4
  %19 = call i32 @i2c_check_functionality(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %187

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.is31fl319x_chip* @devm_kzalloc(%struct.device* %26, i32 40, i32 %27)
  store %struct.is31fl319x_chip* %28, %struct.is31fl319x_chip** %6, align 8
  %29 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %30 = icmp ne %struct.is31fl319x_chip* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %187

34:                                               ; preds = %24
  %35 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %36 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %35, i32 0, i32 0
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %41 = call i32 @is31fl319x_parse_dt(%struct.device* %39, %struct.is31fl319x_chip* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %182

45:                                               ; preds = %34
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %48 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %47, i32 0, i32 5
  store %struct.i2c_client* %46, %struct.i2c_client** %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %49, i32* @regmap_config)
  %51 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %52 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %54 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %45
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %63 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %8, align 4
  br label %182

66:                                               ; preds = %45
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %69 = call i32 @i2c_set_clientdata(%struct.i2c_client* %67, %struct.is31fl319x_chip* %68)
  %70 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %71 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IS31FL319X_RESET, align 4
  %74 = call i32 @regmap_write(i32 %72, i32 %73, i32 0)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %182

84:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %124, %84
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %88 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %85
  %94 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %95 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %94, i32 0, i32 1
  %96 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %96, i64 %98
  %100 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %93
  %104 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %105 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %104, i32 0, i32 1
  %106 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %106, i64 %108
  %110 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %103
  %115 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %116 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %115, i32 0, i32 1
  %117 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %117, i64 %119
  %121 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %114, %103, %93
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %85

127:                                              ; preds = %85
  %128 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %129 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IS31FL319X_CONFIG2, align 4
  %132 = load %struct.device*, %struct.device** %7, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @is31fl319x_microamp_to_cs(%struct.device* %132, i64 %133)
  %135 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %136 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @is31fl319x_db_to_gain(i32 %137)
  %139 = or i32 %134, %138
  %140 = call i32 @regmap_write(i32 %130, i32 %131, i32 %139)
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %178, %127
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %144 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %143, i32 0, i32 2
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %142, %147
  br i1 %148, label %149, label %181

149:                                              ; preds = %141
  %150 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %151 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %150, i32 0, i32 1
  %152 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %152, i64 %154
  store %struct.is31fl319x_led* %155, %struct.is31fl319x_led** %11, align 8
  %156 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %11, align 8
  %157 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %149
  br label %178

161:                                              ; preds = %149
  %162 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %163 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %11, align 8
  %164 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %163, i32 0, i32 2
  store %struct.is31fl319x_chip* %162, %struct.is31fl319x_chip** %164, align 8
  %165 = load i32, i32* @is31fl319x_brightness_set, align 4
  %166 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %11, align 8
  %167 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %11, align 8
  %172 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %171, i32 0, i32 1
  %173 = call i32 @devm_led_classdev_register(%struct.device* %170, %struct.TYPE_4__* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %161
  br label %182

177:                                              ; preds = %161
  br label %178

178:                                              ; preds = %177, %160
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %141

181:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %187

182:                                              ; preds = %176, %77, %58, %44
  %183 = load %struct.is31fl319x_chip*, %struct.is31fl319x_chip** %6, align 8
  %184 = getelementptr inbounds %struct.is31fl319x_chip, %struct.is31fl319x_chip* %183, i32 0, i32 0
  %185 = call i32 @mutex_destroy(i32* %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %182, %181, %31, %21
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.is31fl319x_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @is31fl319x_parse_dt(%struct.device*, %struct.is31fl319x_chip*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.is31fl319x_chip*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @is31fl319x_microamp_to_cs(%struct.device*, i64) #1

declare dso_local i32 @is31fl319x_db_to_gain(i32) #1

declare dso_local i32 @devm_led_classdev_register(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
