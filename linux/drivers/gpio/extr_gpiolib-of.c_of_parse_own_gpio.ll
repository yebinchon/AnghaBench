; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_parse_own_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-of.c_of_parse_own_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device_node = type { i8* }
%struct.gpio_chip = type { %struct.device_node* }
%struct.of_phandle_args = type { i32, i32*, %struct.device_node* }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_LOOKUP_FLAGS_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIO_ACTIVE_LOW = common dso_local global i64 0, align 8
@OF_GPIO_TRANSITORY = common dso_local global i32 0, align 4
@GPIO_TRANSITORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"output-low\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"output-high\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"GPIO line %d (%pOFn): no hogging state specified, bailing out\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"line-name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.device_node*, %struct.gpio_chip*, i32, i8**, i64*, i32*)* @of_parse_own_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @of_parse_own_gpio(%struct.device_node* %0, %struct.gpio_chip* %1, i32 %2, i8** %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.gpio_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.device_node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.of_phandle_args, align 8
  %17 = alloca %struct.gpio_desc*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %8, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %9, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %14, align 8
  %24 = load %struct.device_node*, %struct.device_node** %14, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.gpio_desc* @ERR_PTR(i32 %28)
  store %struct.gpio_desc* %29, %struct.gpio_desc** %7, align 8
  br label %152

30:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  %31 = load i64, i64* @GPIO_LOOKUP_FLAGS_DEFAULT, align 8
  %32 = load i64*, i64** %12, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32*, i32** %13, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.device_node*, %struct.device_node** %14, align 8
  %35 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %19)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %20, align 4
  %40 = call %struct.gpio_desc* @ERR_PTR(i32 %39)
  store %struct.gpio_desc* %40, %struct.gpio_desc** %7, align 8
  br label %152

41:                                               ; preds = %30
  %42 = load %struct.device_node*, %struct.device_node** %14, align 8
  %43 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 2
  store %struct.device_node* %42, %struct.device_node** %43, align 8
  %44 = load i32, i32* %19, align 4
  %45 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %69, %41
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.device_node*, %struct.device_node** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %19, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %18, align 4
  %56 = add i32 %54, %55
  %57 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %18, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @of_property_read_u32_index(%struct.device_node* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32* %61)
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load i32, i32* %20, align 4
  %67 = call %struct.gpio_desc* @ERR_PTR(i32 %66)
  store %struct.gpio_desc* %67, %struct.gpio_desc** %7, align 8
  br label %152

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %18, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %18, align 4
  br label %46

72:                                               ; preds = %46
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %9, align 8
  %74 = call %struct.gpio_desc* @of_xlate_and_get_gpiod_flags(%struct.gpio_chip* %73, %struct.of_phandle_args* %16, i32* %15)
  store %struct.gpio_desc* %74, %struct.gpio_desc** %17, align 8
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %17, align 8
  %76 = call i64 @IS_ERR(%struct.gpio_desc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load %struct.gpio_desc*, %struct.gpio_desc** %17, align 8
  store %struct.gpio_desc* %79, %struct.gpio_desc** %7, align 8
  br label %152

80:                                               ; preds = %72
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i64, i64* @GPIO_ACTIVE_LOW, align 8
  %87 = load i64*, i64** %12, align 8
  %88 = load i64, i64* %87, align 8
  %89 = or i64 %88, %86
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @OF_GPIO_TRANSITORY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i64, i64* @GPIO_TRANSITORY, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, %96
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.device_node*, %struct.device_node** %8, align 8
  %102 = call i64 @of_property_read_bool(%struct.device_node* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* @GPIOD_IN, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %137

109:                                              ; preds = %100
  %110 = load %struct.device_node*, %struct.device_node** %8, align 8
  %111 = call i64 @of_property_read_bool(%struct.device_node* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %136

118:                                              ; preds = %109
  %119 = load %struct.device_node*, %struct.device_node** %8, align 8
  %120 = call i64 @of_property_read_bool(%struct.device_node* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %135

127:                                              ; preds = %118
  %128 = load %struct.gpio_desc*, %struct.gpio_desc** %17, align 8
  %129 = call i32 @desc_to_gpio(%struct.gpio_desc* %128)
  %130 = load %struct.device_node*, %struct.device_node** %8, align 8
  %131 = call i32 @pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %129, %struct.device_node* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  %134 = call %struct.gpio_desc* @ERR_PTR(i32 %133)
  store %struct.gpio_desc* %134, %struct.gpio_desc** %7, align 8
  br label %152

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %113
  br label %137

137:                                              ; preds = %136, %104
  %138 = load i8**, i8*** %11, align 8
  %139 = icmp ne i8** %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load %struct.device_node*, %struct.device_node** %8, align 8
  %142 = load i8**, i8*** %11, align 8
  %143 = call i64 @of_property_read_string(%struct.device_node* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.device_node*, %struct.device_node** %8, align 8
  %147 = getelementptr inbounds %struct.device_node, %struct.device_node* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i8**, i8*** %11, align 8
  store i8* %148, i8** %149, align 8
  br label %150

150:                                              ; preds = %145, %140, %137
  %151 = load %struct.gpio_desc*, %struct.gpio_desc** %17, align 8
  store %struct.gpio_desc* %151, %struct.gpio_desc** %7, align 8
  br label %152

152:                                              ; preds = %150, %127, %78, %65, %38, %26
  %153 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  ret %struct.gpio_desc* %153
}

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local %struct.gpio_desc* @of_xlate_and_get_gpiod_flags(%struct.gpio_chip*, %struct.of_phandle_args*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @pr_warn(i8*, i32, %struct.device_node*) #1

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
