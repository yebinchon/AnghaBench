; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sama5d2-piobu.c_sama5d2_piobu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sama5d2-piobu.c_sama5d2_piobu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sama5d2_piobu = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@sama5d2_piobu_get_direction = common dso_local global i32 0, align 4
@sama5d2_piobu_direction_input = common dso_local global i32 0, align 4
@sama5d2_piobu_direction_output = common dso_local global i32 0, align 4
@sama5d2_piobu_get = common dso_local global i32 0, align 4
@sama5d2_piobu_set = common dso_local global i32 0, align 4
@PIOBU_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to get syscon regmap %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to add gpiochip %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to setup pin: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sama5d2_piobu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sama5d2_piobu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sama5d2_piobu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sama5d2_piobu* @devm_kzalloc(%struct.TYPE_7__* %8, i32 72, i32 %9)
  store %struct.sama5d2_piobu* %10, %struct.sama5d2_piobu** %4, align 8
  %11 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %12 = icmp ne %struct.sama5d2_piobu* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %135

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.sama5d2_piobu* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %24 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 11
  store i32 %22, i32* %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %29 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %36 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 9
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %40 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @sama5d2_piobu_get_direction, align 4
  %43 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %44 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @sama5d2_piobu_direction_input, align 4
  %47 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %48 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @sama5d2_piobu_direction_output, align 4
  %51 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %52 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @sama5d2_piobu_get, align 4
  %55 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %56 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @sama5d2_piobu_set, align 4
  %59 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %60 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  %62 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %63 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 8
  %65 = load i32, i32* @PIOBU_NUM, align 4
  %66 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %67 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %70 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @syscon_node_to_regmap(i32 %75)
  %77 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %78 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %80 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %16
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %88 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  %91 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %93 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %135

96:                                               ; preds = %16
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %100 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %99, i32 0, i32 0
  %101 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %102 = call i32 @devm_gpiochip_add_data(%struct.TYPE_7__* %98, %struct.TYPE_6__* %100, %struct.sama5d2_piobu* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %135

111:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %131, %111
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @PIOBU_NUM, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = load %struct.sama5d2_piobu*, %struct.sama5d2_piobu** %4, align 8
  %118 = getelementptr inbounds %struct.sama5d2_piobu, %struct.sama5d2_piobu* %117, i32 0, i32 0
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @sama5d2_piobu_setup_pin(%struct.TYPE_6__* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %135

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %112

134:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %123, %105, %84, %13
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.sama5d2_piobu* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sama5d2_piobu*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.sama5d2_piobu*) #1

declare dso_local i32 @sama5d2_piobu_setup_pin(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
