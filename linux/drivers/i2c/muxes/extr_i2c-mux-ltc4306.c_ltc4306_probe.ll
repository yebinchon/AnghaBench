; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-ltc4306.c_ltc4306_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-ltc4306.c_ltc4306_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chip_desc = type { i32 }
%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_mux_core = type { i32 }
%struct.ltc4306 = type { %struct.gpio_desc*, %struct.chip_desc* }
%struct.gpio_desc = type { i32 }
%struct.TYPE_2__ = type { i64 }

@chips = common dso_local global %struct.chip_desc* null, align 8
@ltc4306_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"i2c-mux-idle-disconnect\00", align 1
@I2C_MUX_LOCKED = common dso_local global i32 0, align 4
@ltc4306_select_mux = common dso_local global i32 0, align 4
@ltc4306_deselect_mux = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ltc4306_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@LTC_REG_SWITCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"probe failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"ltc,downstream-accelerators-enable\00", align 1
@LTC_DOWNSTREAM_ACCL_EN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"ltc,upstream-accelerators-enable\00", align 1
@LTC_UPSTREAM_ACCL_EN = common dso_local global i32 0, align 4
@LTC_REG_CONFIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"registered %d multiplexed busses for I2C switch %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ltc4306_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4306_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.chip_desc*, align 8
  %6 = alloca %struct.i2c_mux_core*, align 8
  %7 = alloca %struct.ltc4306*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %4, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = call %struct.chip_desc* @of_device_get_match_data(i32* %17)
  store %struct.chip_desc* %18, %struct.chip_desc** %5, align 8
  %19 = load %struct.chip_desc*, %struct.chip_desc** %5, align 8
  %20 = icmp ne %struct.chip_desc* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  %22 = load %struct.chip_desc*, %struct.chip_desc** @chips, align 8
  %23 = load i32, i32* @ltc4306_id, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = call %struct.TYPE_2__* @i2c_match_id(i32 %23, %struct.i2c_client* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %22, i64 %27
  store %struct.chip_desc* %28, %struct.chip_desc** %5, align 8
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = call i32 @device_property_read_bool(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %9, align 4
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load %struct.chip_desc*, %struct.chip_desc** %5, align 8
  %37 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @I2C_MUX_LOCKED, align 4
  %40 = load i32, i32* @ltc4306_select_mux, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32*, i32** @ltc4306_deselect_mux, align 8
  br label %46

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32* [ %44, %43 ], [ null, %45 ]
  %48 = call %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %33, i32* %35, i32 %38, i32 16, i32 %39, i32 %40, i32* %47)
  store %struct.i2c_mux_core* %48, %struct.i2c_mux_core** %6, align 8
  %49 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %50 = icmp ne %struct.i2c_mux_core* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %178

54:                                               ; preds = %46
  %55 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %56 = call %struct.ltc4306* @i2c_mux_priv(%struct.i2c_mux_core* %55)
  store %struct.ltc4306* %56, %struct.ltc4306** %7, align 8
  %57 = load %struct.chip_desc*, %struct.chip_desc** %5, align 8
  %58 = load %struct.ltc4306*, %struct.ltc4306** %7, align 8
  %59 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %58, i32 0, i32 1
  store %struct.chip_desc* %57, %struct.chip_desc** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %61 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.i2c_mux_core* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = call %struct.gpio_desc* @devm_regmap_init_i2c(%struct.i2c_client* %63, i32* @ltc4306_regmap_config)
  %65 = load %struct.ltc4306*, %struct.ltc4306** %7, align 8
  %66 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %65, i32 0, i32 0
  store %struct.gpio_desc* %64, %struct.gpio_desc** %66, align 8
  %67 = load %struct.ltc4306*, %struct.ltc4306** %7, align 8
  %68 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %67, i32 0, i32 0
  %69 = load %struct.gpio_desc*, %struct.gpio_desc** %68, align 8
  %70 = call i64 @IS_ERR(%struct.gpio_desc* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %54
  %73 = load %struct.ltc4306*, %struct.ltc4306** %7, align 8
  %74 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %73, i32 0, i32 0
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.gpio_desc* %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 1
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %2, align 4
  br label %178

82:                                               ; preds = %54
  %83 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 1
  %85 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %86 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store %struct.gpio_desc* %86, %struct.gpio_desc** %8, align 8
  %87 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %88 = call i64 @IS_ERR(%struct.gpio_desc* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %92 = call i32 @PTR_ERR(%struct.gpio_desc* %91)
  store i32 %92, i32* %2, align 4
  br label %178

93:                                               ; preds = %82
  %94 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %95 = icmp ne %struct.gpio_desc* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = call i32 @udelay(i32 1)
  %98 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %99 = call i32 @gpiod_set_value(%struct.gpio_desc* %98, i32 1)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.ltc4306*, %struct.ltc4306** %7, align 8
  %102 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %101, i32 0, i32 0
  %103 = load %struct.gpio_desc*, %struct.gpio_desc** %102, align 8
  %104 = load i32, i32* @LTC_REG_SWITCH, align 4
  %105 = call i64 @regmap_write(%struct.gpio_desc* %103, i32 %104, i32 0)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 1
  %110 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %178

113:                                              ; preds = %100
  %114 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 1
  %116 = call i32 @device_property_read_bool(i32* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @LTC_DOWNSTREAM_ACCL_EN, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %113
  %123 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 1
  %125 = call i32 @device_property_read_bool(i32* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @LTC_UPSTREAM_ACCL_EN, align 4
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.ltc4306*, %struct.ltc4306** %7, align 8
  %133 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %132, i32 0, i32 0
  %134 = load %struct.gpio_desc*, %struct.gpio_desc** %133, align 8
  %135 = load i32, i32* @LTC_REG_CONFIG, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i64 @regmap_write(%struct.gpio_desc* %134, i32 %135, i32 %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* @ENODEV, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %178

142:                                              ; preds = %131
  %143 = load %struct.ltc4306*, %struct.ltc4306** %7, align 8
  %144 = call i32 @ltc4306_gpio_init(%struct.ltc4306* %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %2, align 4
  br label %178

149:                                              ; preds = %142
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %167, %149
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.chip_desc*, %struct.chip_desc** %5, align 8
  %153 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %150
  %157 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %157, i32 0, i32 %158, i32 0)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %6, align 8
  %164 = call i32 @i2c_mux_del_adapters(%struct.i2c_mux_core* %163)
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %2, align 4
  br label %178

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %150

170:                                              ; preds = %150
  %171 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 1
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @dev_info(i32* %172, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %173, i32 %176)
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %170, %162, %147, %139, %107, %90, %72, %51
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.chip_desc* @of_device_get_match_data(i32*) #1

declare dso_local %struct.TYPE_2__* @i2c_match_id(i32, %struct.i2c_client*) #1

declare dso_local i32 @device_property_read_bool(i32*, i8*) #1

declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.ltc4306* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.i2c_mux_core*) #1

declare dso_local %struct.gpio_desc* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpiod_set_value(%struct.gpio_desc*, i32) #1

declare dso_local i64 @regmap_write(%struct.gpio_desc*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ltc4306_gpio_init(%struct.ltc4306*) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_del_adapters(%struct.i2c_mux_core*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
