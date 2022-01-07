; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65910.c_tps65910_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65910.c_tps65910_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.tps65910 = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.tps65910_board = type { i32, i32* }
%struct.tps65910_gpio = type { %struct.TYPE_11__, %struct.tps65910* }
%struct.TYPE_11__ = type { i32, i32, i32, i64, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@TPS65910_NUM_GPIO = common dso_local global i32 0, align 4
@TPS65911_NUM_GPIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tps65910_gpio_input = common dso_local global i32 0, align 4
@tps65910_gpio_output = common dso_local global i32 0, align 4
@tps65910_gpio_set = common dso_local global i32 0, align 4
@tps65910_gpio_get = common dso_local global i32 0, align 4
@TPS65910_GPIO0 = common dso_local global i64 0, align 8
@GPIO_SLEEP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"GPIO Sleep setting failed with err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65910_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65910*, align 8
  %5 = alloca %struct.tps65910_board*, align 8
  %6 = alloca %struct.tps65910_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tps65910* @dev_get_drvdata(i32 %12)
  store %struct.tps65910* %13, %struct.tps65910** %4, align 8
  %14 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %15 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = call %struct.tps65910_board* @dev_get_platdata(%struct.TYPE_12__* %16)
  store %struct.tps65910_board* %17, %struct.tps65910_board** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tps65910_gpio* @devm_kzalloc(%struct.TYPE_10__* %19, i32 64, i32 %20)
  store %struct.tps65910_gpio* %21, %struct.tps65910_gpio** %6, align 8
  %22 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %23 = icmp ne %struct.tps65910_gpio* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %183

27:                                               ; preds = %1
  %28 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %29 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %30 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %29, i32 0, i32 1
  store %struct.tps65910* %28, %struct.tps65910** %30, align 8
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %33 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 10
  store i32 %31, i32* %34, align 4
  %35 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %36 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %41 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 9
  store i32 %39, i32* %42, align 8
  %43 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %44 = call i32 @tps65910_chip_id(%struct.tps65910* %43)
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 128, label %50
  ]

45:                                               ; preds = %27
  %46 = load i32, i32* @TPS65910_NUM_GPIO, align 4
  %47 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %48 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %58

50:                                               ; preds = %27
  %51 = load i32, i32* @TPS65911_NUM_GPIO, align 4
  %52 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %53 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %58

55:                                               ; preds = %27
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %183

58:                                               ; preds = %50, %45
  %59 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @tps65910_gpio_input, align 4
  %63 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %64 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 8
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @tps65910_gpio_output, align 4
  %67 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %68 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 7
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @tps65910_gpio_set, align 4
  %71 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %72 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @tps65910_gpio_get, align 4
  %75 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %76 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %81 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %84 = icmp ne %struct.tps65910_board* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %58
  %86 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %87 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %92 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %95 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  br label %101

97:                                               ; preds = %85, %58
  %98 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %99 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  store i32 -1, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %103 = icmp ne %struct.tps65910_board* %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %101
  %105 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %106 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %115 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %116 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.tps65910_board* @tps65910_parse_dt_for_gpio(%struct.TYPE_10__* %113, %struct.tps65910* %114, i32 %118)
  store %struct.tps65910_board* %119, %struct.tps65910_board** %5, align 8
  br label %120

120:                                              ; preds = %111, %104, %101
  %121 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %122 = icmp ne %struct.tps65910_board* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  br label %163

124:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %159, %124
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %128 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %125
  %133 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %134 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %132
  br label %159

142:                                              ; preds = %132
  %143 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %144 = load i64, i64* @TPS65910_GPIO0, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = load i32, i32* @GPIO_SLEEP_MASK, align 4
  %149 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %143, i64 %147, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %154 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %153, i32 0, i32 0
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @dev_warn(%struct.TYPE_12__* %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %152, %142
  br label %159

159:                                              ; preds = %158, %141
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %125

162:                                              ; preds = %125
  br label %163

163:                                              ; preds = %162, %123
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %167 = getelementptr inbounds %struct.tps65910_gpio, %struct.tps65910_gpio* %166, i32 0, i32 0
  %168 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %169 = call i32 @devm_gpiochip_add_data(%struct.TYPE_10__* %165, %struct.TYPE_11__* %167, %struct.tps65910_gpio* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %163
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @dev_err(%struct.TYPE_10__* %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %2, align 4
  br label %183

178:                                              ; preds = %163
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = load %struct.tps65910_gpio*, %struct.tps65910_gpio** %6, align 8
  %181 = call i32 @platform_set_drvdata(%struct.platform_device* %179, %struct.tps65910_gpio* %180)
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %178, %172, %55, %24
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #1

declare dso_local %struct.tps65910_board* @dev_get_platdata(%struct.TYPE_12__*) #1

declare dso_local %struct.tps65910_gpio* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @tps65910_chip_id(%struct.tps65910*) #1

declare dso_local %struct.tps65910_board* @tps65910_parse_dt_for_gpio(%struct.TYPE_10__*, %struct.tps65910*, i32) #1

declare dso_local i32 @tps65910_reg_set_bits(%struct.tps65910*, i64, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.tps65910_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65910_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
