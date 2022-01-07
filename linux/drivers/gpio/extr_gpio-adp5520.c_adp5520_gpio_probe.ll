; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5520.c_adp5520_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5520.c_adp5520_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.adp5520_gpio_platform_data = type { i32, i8, i32 }
%struct.adp5520_gpio = type { i32*, %struct.gpio_chip, i32 }
%struct.gpio_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ID_ADP5520 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"only ADP5520 supports GPIO\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADP5520_MAXGPIOS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@adp5520_gpio_direction_input = common dso_local global i32 0, align 4
@adp5520_gpio_direction_output = common dso_local global i32 0, align 4
@adp5520_gpio_get_value = common dso_local global i32 0, align 4
@adp5520_gpio_set_value = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ADP5520_GPIO_CFG_1 = common dso_local global i32 0, align 4
@ADP5520_GPIO_C3 = common dso_local global i32 0, align 4
@ADP5520_C3_MODE = common dso_local global i8 0, align 1
@ADP5520_GPIO_R3 = common dso_local global i32 0, align 4
@ADP5520_R3_MODE = common dso_local global i8 0, align 1
@ADP5520_LED_CONTROL = common dso_local global i32 0, align 4
@ADP5520_GPIO_PULLUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"failed to write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adp5520_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adp5520_gpio_platform_data*, align 8
  %5 = alloca %struct.adp5520_gpio*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = call %struct.adp5520_gpio_platform_data* @dev_get_platdata(%struct.TYPE_5__* %12)
  store %struct.adp5520_gpio_platform_data* %13, %struct.adp5520_gpio_platform_data** %4, align 8
  store i8 0, i8* %10, align 1
  %14 = load %struct.adp5520_gpio_platform_data*, %struct.adp5520_gpio_platform_data** %4, align 8
  %15 = icmp eq %struct.adp5520_gpio_platform_data* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = call i32 @dev_err(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %194

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ID_ADP5520, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = call i32 @dev_err(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %194

34:                                               ; preds = %22
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 1
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.adp5520_gpio* @devm_kzalloc(%struct.TYPE_5__* %36, i32 48, i32 %37)
  store %struct.adp5520_gpio* %38, %struct.adp5520_gpio** %5, align 8
  %39 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %40 = icmp eq %struct.adp5520_gpio* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %194

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %50 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %74, %44
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ADP5520_MAXGPIOS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load %struct.adp5520_gpio_platform_data*, %struct.adp5520_gpio_platform_data** %4, align 8
  %57 = getelementptr inbounds %struct.adp5520_gpio_platform_data, %struct.adp5520_gpio_platform_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 1, %64
  %66 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %67 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %65, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %55
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %51

77:                                               ; preds = %51
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %192

83:                                               ; preds = %77
  %84 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %85 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %84, i32 0, i32 1
  store %struct.gpio_chip* %85, %struct.gpio_chip** %6, align 8
  %86 = load i32, i32* @adp5520_gpio_direction_input, align 4
  %87 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %88 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @adp5520_gpio_direction_output, align 4
  %90 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %91 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @adp5520_gpio_get_value, align 4
  %93 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %94 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @adp5520_gpio_set_value, align 4
  %96 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %97 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %99 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load %struct.adp5520_gpio_platform_data*, %struct.adp5520_gpio_platform_data** %4, align 8
  %101 = getelementptr inbounds %struct.adp5520_gpio_platform_data, %struct.adp5520_gpio_platform_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %104 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %107 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %112 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @THIS_MODULE, align 4
  %114 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %115 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %117 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ADP5520_GPIO_CFG_1, align 4
  %120 = load %struct.adp5520_gpio_platform_data*, %struct.adp5520_gpio_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.adp5520_gpio_platform_data, %struct.adp5520_gpio_platform_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @adp5520_clr_bits(i32 %118, i32 %119, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load %struct.adp5520_gpio_platform_data*, %struct.adp5520_gpio_platform_data** %4, align 8
  %125 = getelementptr inbounds %struct.adp5520_gpio_platform_data, %struct.adp5520_gpio_platform_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ADP5520_GPIO_C3, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %83
  %131 = load i8, i8* @ADP5520_C3_MODE, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* %10, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %134, %132
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %10, align 1
  br label %137

137:                                              ; preds = %130, %83
  %138 = load %struct.adp5520_gpio_platform_data*, %struct.adp5520_gpio_platform_data** %4, align 8
  %139 = getelementptr inbounds %struct.adp5520_gpio_platform_data, %struct.adp5520_gpio_platform_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @ADP5520_GPIO_R3, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %137
  %145 = load i8, i8* @ADP5520_R3_MODE, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* %10, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %148, %146
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %10, align 1
  br label %151

151:                                              ; preds = %144, %137
  %152 = load i8, i8* %10, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %156 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ADP5520_LED_CONTROL, align 4
  %159 = load i8, i8* %10, align 1
  %160 = call i32 @adp5520_set_bits(i32 %157, i32 %158, i8 zeroext %159)
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %154, %151
  %162 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %163 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ADP5520_GPIO_PULLUP, align 4
  %166 = load %struct.adp5520_gpio_platform_data*, %struct.adp5520_gpio_platform_data** %4, align 8
  %167 = getelementptr inbounds %struct.adp5520_gpio_platform_data, %struct.adp5520_gpio_platform_data* %166, i32 0, i32 1
  %168 = load i8, i8* %167, align 4
  %169 = call i32 @adp5520_set_bits(i32 %164, i32 %165, i8 zeroext %168)
  %170 = load i32, i32* %7, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %161
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 1
  %177 = call i32 @dev_err(%struct.TYPE_5__* %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %192

178:                                              ; preds = %161
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 1
  %181 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %182 = getelementptr inbounds %struct.adp5520_gpio, %struct.adp5520_gpio* %181, i32 0, i32 1
  %183 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %184 = call i32 @devm_gpiochip_add_data(%struct.TYPE_5__* %180, %struct.gpio_chip* %182, %struct.adp5520_gpio* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %192

188:                                              ; preds = %178
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = load %struct.adp5520_gpio*, %struct.adp5520_gpio** %5, align 8
  %191 = call i32 @platform_set_drvdata(%struct.platform_device* %189, %struct.adp5520_gpio* %190)
  store i32 0, i32* %2, align 4
  br label %194

192:                                              ; preds = %187, %174, %80
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %192, %188, %41, %28, %16
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.adp5520_gpio_platform_data* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.adp5520_gpio* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @adp5520_clr_bits(i32, i32, i32) #1

declare dso_local i32 @adp5520_set_bits(i32, i32, i8 zeroext) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_5__*, %struct.gpio_chip*, %struct.adp5520_gpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.adp5520_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
