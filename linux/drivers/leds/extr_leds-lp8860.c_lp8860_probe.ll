; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8860.c_lp8860_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8860.c_lp8860_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp8860_led = type { %struct.TYPE_8__, i32*, i32*, i32, %struct.i2c_client*, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.led_init_data = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get enable gpio: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vled\00", align 1
@lp8860_brightness_set = common dso_local global i32 0, align 4
@lp8860_regmap_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@lp8860_eeprom_regmap_config = common dso_local global i32 0, align 4
@LP8860_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c":display_cluster\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"led register err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp8860_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8860_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lp8860_led*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.led_init_data, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  %15 = bitcast %struct.led_init_data* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.lp8860_led* @devm_kzalloc(%struct.TYPE_7__* %17, i32 56, i32 %18)
  store %struct.lp8860_led* %19, %struct.lp8860_led** %7, align 8
  %20 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %21 = icmp ne %struct.lp8860_led* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %157

25:                                               ; preds = %2
  %26 = load %struct.device_node*, %struct.device_node** %8, align 8
  %27 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %26, i32* null)
  store %struct.device_node* %27, %struct.device_node** %9, align 8
  %28 = load %struct.device_node*, %struct.device_node** %9, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %157

33:                                               ; preds = %25
  %34 = load %struct.device_node*, %struct.device_node** %9, align 8
  %35 = call i32 @of_get_property(%struct.device_node* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null)
  %36 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %37 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %42 = call i32* @devm_gpiod_get_optional(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %44 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %43, i32 0, i32 6
  store i32* %42, i32** %44, align 8
  %45 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %46 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %33
  %51 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %52 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @PTR_ERR(i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dev_err(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %157

60:                                               ; preds = %33
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32* @devm_regulator_get(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %65 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  %66 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %67 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @IS_ERR(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %73 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %72, i32 0, i32 5
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %71, %60
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %77 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %76, i32 0, i32 4
  store %struct.i2c_client* %75, %struct.i2c_client** %77, align 8
  %78 = load i32, i32* @lp8860_brightness_set, align 4
  %79 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %80 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %83 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %82, i32 0, i32 3
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %87 = call i32 @i2c_set_clientdata(%struct.i2c_client* %85, %struct.lp8860_led* %86)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %88, i32* @lp8860_regmap_config)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %92 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %94 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @IS_ERR(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %74
  %99 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %100 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @PTR_ERR(i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @dev_err(%struct.TYPE_7__* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %157

108:                                              ; preds = %74
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %109, i32* @lp8860_eeprom_regmap_config)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %113 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %115 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @IS_ERR(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %108
  %120 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %121 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @PTR_ERR(i32* %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 0
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @dev_err(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %157

129:                                              ; preds = %108
  %130 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %131 = call i32 @lp8860_init(%struct.lp8860_led* %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %157

136:                                              ; preds = %129
  %137 = load %struct.device_node*, %struct.device_node** %9, align 8
  %138 = call i32 @of_fwnode_handle(%struct.device_node* %137)
  %139 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %10, i32 0, i32 2
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @LP8860_NAME, align 4
  %141 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %10, i32 0, i32 1
  store i32 %140, i32* %141, align 8
  %142 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 0
  %145 = load %struct.lp8860_led*, %struct.lp8860_led** %7, align 8
  %146 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %145, i32 0, i32 0
  %147 = call i32 @devm_led_classdev_register_ext(%struct.TYPE_7__* %144, %struct.TYPE_8__* %146, %struct.led_init_data* %10)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %136
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @dev_err(%struct.TYPE_7__* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %157

156:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %150, %134, %119, %98, %50, %30, %22
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.lp8860_led* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, i32*) #2

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #2

declare dso_local i32* @devm_gpiod_get_optional(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32* @devm_regulator_get(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp8860_led*) #2

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i32 @lp8860_init(%struct.lp8860_led*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @devm_led_classdev_register_ext(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.led_init_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
