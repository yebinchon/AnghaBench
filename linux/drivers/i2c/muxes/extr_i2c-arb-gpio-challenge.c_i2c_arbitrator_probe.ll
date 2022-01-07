; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-arb-gpio-challenge.c_i2c_arbitrator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-arb-gpio-challenge.c_i2c_arbitrator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_mux_core = type { i32 }
%struct.i2c_arbitrator_data = type { i32, i32, i32, %struct.gpio_desc*, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Cannot find device tree node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Platform data is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_MUX_ARBITRATOR = common dso_local global i32 0, align 4
@i2c_arbitrator_select = common dso_local global i32 0, align 4
@i2c_arbitrator_deselect = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"our-claim\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"could not get \22our-claim\22 GPIO (%ld)\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"their-claim\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"could not get \22their-claim\22 GPIO (%ld)\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Only one other master is supported\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"slew-delay-us\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"wait-retry-us\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"wait-free-us\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"i2c-parent\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Cannot parse i2c-parent\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Cannot find parent bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_arbitrator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_arbitrator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.i2c_mux_core*, align 8
  %8 = alloca %struct.i2c_arbitrator_data*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %181

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i64 @dev_get_platdata(%struct.device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %181

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* @I2C_MUX_ARBITRATOR, align 4
  %35 = load i32, i32* @i2c_arbitrator_select, align 4
  %36 = load i32, i32* @i2c_arbitrator_deselect, align 4
  %37 = call %struct.i2c_mux_core* @i2c_mux_alloc(i32* null, %struct.device* %33, i32 1, i32 32, i32 %34, i32 %35, i32 %36)
  store %struct.i2c_mux_core* %37, %struct.i2c_mux_core** %7, align 8
  %38 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %39 = icmp ne %struct.i2c_mux_core* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %181

43:                                               ; preds = %32
  %44 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %45 = call %struct.i2c_arbitrator_data* @i2c_mux_priv(%struct.i2c_mux_core* %44)
  store %struct.i2c_arbitrator_data* %45, %struct.i2c_arbitrator_data** %8, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.i2c_mux_core* %47)
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %51 = call i8* @devm_gpiod_get(%struct.device* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = bitcast i8* %51 to %struct.gpio_desc*
  %53 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %54 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %53, i32 0, i32 4
  store %struct.gpio_desc* %52, %struct.gpio_desc** %54, align 8
  %55 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %56 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %55, i32 0, i32 4
  %57 = load %struct.gpio_desc*, %struct.gpio_desc** %56, align 8
  %58 = call i64 @IS_ERR(%struct.gpio_desc* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %43
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %63 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %62, i32 0, i32 4
  %64 = load %struct.gpio_desc*, %struct.gpio_desc** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.gpio_desc* %64)
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %68 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %67, i32 0, i32 4
  %69 = load %struct.gpio_desc*, %struct.gpio_desc** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.gpio_desc* %69)
  store i32 %70, i32* %2, align 4
  br label %181

71:                                               ; preds = %43
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* @GPIOD_IN, align 4
  %74 = call i8* @devm_gpiod_get(%struct.device* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = bitcast i8* %74 to %struct.gpio_desc*
  %76 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %77 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %76, i32 0, i32 3
  store %struct.gpio_desc* %75, %struct.gpio_desc** %77, align 8
  %78 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %79 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %78, i32 0, i32 3
  %80 = load %struct.gpio_desc*, %struct.gpio_desc** %79, align 8
  %81 = call i64 @IS_ERR(%struct.gpio_desc* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %71
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %86 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %85, i32 0, i32 3
  %87 = load %struct.gpio_desc*, %struct.gpio_desc** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.gpio_desc* %87)
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %91 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %90, i32 0, i32 3
  %92 = load %struct.gpio_desc*, %struct.gpio_desc** %91, align 8
  %93 = call i32 @PTR_ERR(%struct.gpio_desc* %92)
  store i32 %93, i32* %2, align 4
  br label %181

94:                                               ; preds = %71
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load i32, i32* @GPIOD_IN, align 4
  %97 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 %96)
  store %struct.gpio_desc* %97, %struct.gpio_desc** %9, align 8
  %98 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %99 = call i64 @IS_ERR(%struct.gpio_desc* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %94
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %181

106:                                              ; preds = %94
  %107 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %108 = call i32 @PTR_ERR(%struct.gpio_desc* %107)
  %109 = load i32, i32* @EPROBE_DEFER, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EPROBE_DEFER, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %181

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.device_node*, %struct.device_node** %5, align 8
  %118 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %119 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %118, i32 0, i32 0
  %120 = call i64 @of_property_read_u32(%struct.device_node* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %124 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %123, i32 0, i32 0
  store i32 10, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.device_node*, %struct.device_node** %5, align 8
  %127 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %128 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %127, i32 0, i32 1
  %129 = call i64 @of_property_read_u32(%struct.device_node* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %133 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %132, i32 0, i32 1
  store i32 3000, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = load %struct.device_node*, %struct.device_node** %5, align 8
  %136 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %137 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %136, i32 0, i32 2
  %138 = call i64 @of_property_read_u32(%struct.device_node* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %8, align 8
  %142 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %141, i32 0, i32 2
  store i32 50000, i32* %142, align 8
  br label %143

143:                                              ; preds = %140, %134
  %144 = load %struct.device_node*, %struct.device_node** %5, align 8
  %145 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store %struct.device_node* %145, %struct.device_node** %6, align 8
  %146 = load %struct.device_node*, %struct.device_node** %6, align 8
  %147 = icmp ne %struct.device_node* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %181

153:                                              ; preds = %143
  %154 = load %struct.device_node*, %struct.device_node** %6, align 8
  %155 = call i32 @of_get_i2c_adapter_by_node(%struct.device_node* %154)
  %156 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %157 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load %struct.device_node*, %struct.device_node** %6, align 8
  %159 = call i32 @of_node_put(%struct.device_node* %158)
  %160 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %161 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %153
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %165, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %167 = load i32, i32* @EPROBE_DEFER, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %181

169:                                              ; preds = %153
  %170 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %171 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %170, i32 0, i32 0, i32 0)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %176 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @i2c_put_adapter(i32 %177)
  br label %179

179:                                              ; preds = %174, %169
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %164, %148, %112, %101, %83, %60, %40, %27, %18
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(i32*, %struct.device*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.i2c_arbitrator_data* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_mux_core*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_get_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

declare dso_local i32 @i2c_put_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
