; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts4900.c_ts4900_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts4900.c_ts4900_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_8__ }
%struct.i2c_device_id = type { i32 }
%struct.ts4900_gpio_priv = type { i64, %struct.TYPE_7__, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@DEFAULT_PIN_NUMBER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"ts4900-gpio\00", align 1
@ts4900_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to register gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ts4900_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts4900_gpio_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ts4900_gpio_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @of_property_read_u32(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @DEFAULT_PIN_NUMBER, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ts4900_gpio_priv* @devm_kzalloc(%struct.TYPE_8__* %19, i32 40, i32 %20)
  store %struct.ts4900_gpio_priv* %21, %struct.ts4900_gpio_priv** %6, align 8
  %22 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %23 = icmp ne %struct.ts4900_gpio_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %85

27:                                               ; preds = %17
  %28 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %28, i32 0, i32 1
  %30 = bitcast %struct.TYPE_7__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_7__* @template_chip to i8*), i64 24, i1 false)
  %31 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %36 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i64 @of_device_get_match_data(%struct.TYPE_8__* %44)
  %46 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %47 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %48, i32* @ts4900_regmap_config)
  %50 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %51 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %53 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %27
  %58 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %59 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %85

67:                                               ; preds = %27
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %71 = getelementptr inbounds %struct.ts4900_gpio_priv, %struct.ts4900_gpio_priv* %70, i32 0, i32 1
  %72 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %73 = call i32 @devm_gpiochip_add_data(%struct.TYPE_8__* %69, %struct.TYPE_7__* %71, %struct.ts4900_gpio_priv* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %85

81:                                               ; preds = %67
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.ts4900_gpio_priv*, %struct.ts4900_gpio_priv** %6, align 8
  %84 = call i32 @i2c_set_clientdata(%struct.i2c_client* %82, %struct.ts4900_gpio_priv* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %76, %57, %24
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.ts4900_gpio_priv* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.ts4900_gpio_priv*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ts4900_gpio_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
