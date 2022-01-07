; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktd2692_context = type { %struct.TYPE_4__, i32*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ktd2692_led_config_data = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot get ctrl-gpios %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot get aux-gpios %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to enable supply: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"No DT child node found for connected LED.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"led-max-microamp\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to parse led-max-microamp\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"flash-max-microamp\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to parse flash-max-microamp\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"flash-max-timeout-us\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"failed to parse flash-max-timeout-us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ktd2692_context*, %struct.device*, %struct.ktd2692_led_config_data*)* @ktd2692_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ktd2692_parse_dt(%struct.ktd2692_context* %0, %struct.device* %1, %struct.ktd2692_led_config_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ktd2692_context*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ktd2692_led_config_data*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  store %struct.ktd2692_context* %0, %struct.ktd2692_context** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.ktd2692_led_config_data* %2, %struct.ktd2692_led_config_data** %7, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %146

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GPIOD_ASIS, align 4
  %24 = call i8* @devm_gpiod_get(%struct.device* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %26 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %28 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @PTR_ERR_OR_ZERO(i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %146

38:                                               ; preds = %21
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* @GPIOD_ASIS, align 4
  %41 = call i8* @devm_gpiod_get(%struct.device* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %43 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %45 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR_OR_ZERO(i8* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %146

55:                                               ; preds = %38
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32* @devm_regulator_get(%struct.device* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %59 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %61 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @IS_ERR(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %67 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %65, %55
  %69 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %70 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %75 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @regulator_enable(i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %73
  br label %85

85:                                               ; preds = %84, %68
  %86 = load %struct.device_node*, %struct.device_node** %8, align 8
  %87 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %86, i32* null)
  store %struct.device_node* %87, %struct.device_node** %9, align 8
  %88 = load %struct.device_node*, %struct.device_node** %9, align 8
  %89 = icmp ne %struct.device_node* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %146

95:                                               ; preds = %85
  %96 = load %struct.device_node*, %struct.device_node** %9, align 8
  %97 = call i64 @of_get_property(%struct.device_node* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %105

100:                                              ; preds = %95
  %101 = load %struct.device_node*, %struct.device_node** %9, align 8
  %102 = getelementptr inbounds %struct.device_node, %struct.device_node* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  br label %105

105:                                              ; preds = %100, %99
  %106 = phi i64 [ %97, %99 ], [ %104, %100 ]
  %107 = trunc i64 %106 to i32
  %108 = load %struct.ktd2692_context*, %struct.ktd2692_context** %5, align 8
  %109 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  %112 = load %struct.device_node*, %struct.device_node** %9, align 8
  %113 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %7, align 8
  %114 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %113, i32 0, i32 2
  %115 = call i32 @of_property_read_u32(%struct.device_node* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %142

121:                                              ; preds = %105
  %122 = load %struct.device_node*, %struct.device_node** %9, align 8
  %123 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %7, align 8
  %124 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %123, i32 0, i32 1
  %125 = call i32 @of_property_read_u32(%struct.device_node* %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %142

131:                                              ; preds = %121
  %132 = load %struct.device_node*, %struct.device_node** %9, align 8
  %133 = load %struct.ktd2692_led_config_data*, %struct.ktd2692_led_config_data** %7, align 8
  %134 = getelementptr inbounds %struct.ktd2692_led_config_data, %struct.ktd2692_led_config_data* %133, i32 0, i32 0
  %135 = call i32 @of_property_read_u32(%struct.device_node* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %142

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %138, %128, %118
  %143 = load %struct.device_node*, %struct.device_node** %9, align 8
  %144 = call i32 @of_node_put(%struct.device_node* %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %142, %90, %50, %33, %18
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, i32*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
