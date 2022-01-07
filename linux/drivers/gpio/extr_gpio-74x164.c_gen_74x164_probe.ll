; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74x164.c_gen_74x164_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74x164.c_gen_74x164_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.gen_74x164_chip = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"registers-number\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Missing 'registers-number' property.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@gen_74x164_direction_output = common dso_local global i32 0, align 4
@gen_74x164_get_value = common dso_local global i32 0, align 4
@gen_74x164_set_value = common dso_local global i32 0, align 4
@gen_74x164_set_multiple = common dso_local global i32 0, align 4
@GEN_74X164_NUMBER_GPIOS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed writing: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @gen_74x164_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_74x164_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.gen_74x164_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  store i32 8, i32* %8, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call i32 @spi_setup(%struct.spi_device* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %140

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 1
  %18 = call i32 @device_property_read_u32(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %140

27:                                               ; preds = %15
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 1
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 64, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.gen_74x164_chip* @devm_kzalloc(i32* %29, i32 %33, i32 %34)
  store %struct.gen_74x164_chip* %35, %struct.gen_74x164_chip** %4, align 8
  %36 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %37 = icmp ne %struct.gen_74x164_chip* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %140

41:                                               ; preds = %27
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %45 = call i32 @devm_gpiod_get_optional(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %47 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %49 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %55 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %140

58:                                               ; preds = %41
  %59 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %60 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @gpiod_set_value_cansleep(i32 %61, i32 1)
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %65 = call i32 @spi_set_drvdata(%struct.spi_device* %63, %struct.gen_74x164_chip* %64)
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %70 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 9
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @gen_74x164_direction_output, align 4
  %73 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %74 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 8
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @gen_74x164_get_value, align 4
  %77 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %78 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 7
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @gen_74x164_set_value, align 4
  %81 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %82 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @gen_74x164_set_multiple, align 4
  %85 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %86 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 8
  %88 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %89 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %93 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @GEN_74X164_NUMBER_GPIOS, align 4
  %95 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %96 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %94, %97
  %99 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %100 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %103 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %106 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %105, i32 0, i32 1
  %107 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %108 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  store i32* %106, i32** %109, align 8
  %110 = load i32, i32* @THIS_MODULE, align 4
  %111 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %112 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %115 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %114, i32 0, i32 1
  %116 = call i32 @mutex_init(i32* %115)
  %117 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %118 = call i32 @__gen_74x164_write_config(%struct.gen_74x164_chip* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %58
  %122 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %123 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %122, i32 0, i32 1
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %135

126:                                              ; preds = %58
  %127 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %128 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %127, i32 0, i32 2
  %129 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %130 = call i32 @gpiochip_add_data(%struct.TYPE_2__* %128, %struct.gen_74x164_chip* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %140

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %121
  %136 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %4, align 8
  %137 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %136, i32 0, i32 1
  %138 = call i32 @mutex_destroy(i32* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %135, %133, %53, %38, %21, %13
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.gen_74x164_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.gen_74x164_chip*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @__gen_74x164_write_config(%struct.gen_74x164_chip*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_2__*, %struct.gen_74x164_chip*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
