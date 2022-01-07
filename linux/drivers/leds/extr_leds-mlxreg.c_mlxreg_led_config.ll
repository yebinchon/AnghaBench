; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_led_priv_data = type { %struct.TYPE_2__*, %struct.mlxreg_core_platform_data* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxreg_core_platform_data = type { i32, i32, %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i32, i8*, i32, i32, i64 }
%struct.mlxreg_led_data = type { %struct.mlxreg_core_data*, i32, i32, %struct.mlxreg_led_priv_data*, %struct.led_classdev }
%struct.led_classdev = type { i32, i32, i32, i32, i32, i32 (%struct.led_classdev*, i32)*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to query capability register\0A\00", align 1
@MLXREG_LED_CAPABILITY_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"orange\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@MLXREG_LED_RED_SOLID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"amber\00", align 1
@MLXREG_LED_AMBER_SOLID = common dso_local global i32 0, align 4
@MLXREG_LED_GREEN_SOLID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"mlxreg\00", align 1
@LED_ON = common dso_local global i32 0, align 4
@mlxreg_led_brightness_get = common dso_local global i32 0, align 4
@mlxreg_led_blink_set = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"label: %s, mask: 0x%02x, offset:0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxreg_led_priv_data*)* @mlxreg_led_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_led_config(%struct.mlxreg_led_priv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxreg_led_priv_data*, align 8
  %4 = alloca %struct.mlxreg_core_platform_data*, align 8
  %5 = alloca %struct.mlxreg_core_data*, align 8
  %6 = alloca %struct.mlxreg_led_data*, align 8
  %7 = alloca %struct.led_classdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxreg_led_priv_data* %0, %struct.mlxreg_led_priv_data** %3, align 8
  %12 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %3, align 8
  %13 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %12, i32 0, i32 1
  %14 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %13, align 8
  store %struct.mlxreg_core_platform_data* %14, %struct.mlxreg_core_platform_data** %4, align 8
  %15 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %15, i32 0, i32 2
  %17 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %16, align 8
  store %struct.mlxreg_core_data* %17, %struct.mlxreg_core_data** %5, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %179, %1
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %184

24:                                               ; preds = %18
  %25 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %3, align 8
  %26 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.mlxreg_led_data* @devm_kzalloc(i32* %28, i32 64, i32 %29)
  store %struct.mlxreg_led_data* %30, %struct.mlxreg_led_data** %6, align 8
  %31 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %32 = icmp ne %struct.mlxreg_led_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %185

36:                                               ; preds = %24
  %37 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %38 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %36
  %42 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %46 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @regmap_read(i32 %44, i64 %47, i32* %9)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %3, align 8
  %53 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %2, align 4
  br label %185

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %61 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %179

66:                                               ; preds = %58
  %67 = load i32, i32* @MLXREG_LED_CAPABILITY_CLEAR, align 4
  %68 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %69 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %36
  %73 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %74 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %73, i32 0, i32 4
  store %struct.led_classdev* %74, %struct.led_classdev** %7, align 8
  %75 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %3, align 8
  %76 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %77 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %76, i32 0, i32 3
  store %struct.mlxreg_led_priv_data* %75, %struct.mlxreg_led_priv_data** %77, align 8
  %78 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %79 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strstr(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %72
  %84 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %85 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strstr(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83, %72
  %90 = load i32, i32* @LED_OFF, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* @MLXREG_LED_RED_SOLID, align 4
  %92 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %93 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %111

94:                                               ; preds = %83
  %95 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %96 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strstr(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* @LED_OFF, align 4
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @MLXREG_LED_AMBER_SOLID, align 4
  %103 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %104 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  br label %110

105:                                              ; preds = %94
  %106 = load i32, i32* @LED_OFF, align 4
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @MLXREG_LED_GREEN_SOLID, align 4
  %108 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %109 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %113 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %116 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @sprintf(i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %117)
  %119 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %120 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %123 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %126 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @LED_ON, align 4
  %128 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %129 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 8
  %130 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %131 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %130, i32 0, i32 5
  store i32 (%struct.led_classdev*, i32)* @mlxreg_led_brightness_set, i32 (%struct.led_classdev*, i32)** %131, align 8
  %132 = load i32, i32* @mlxreg_led_brightness_get, align 4
  %133 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %134 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @mlxreg_led_blink_set, align 4
  %136 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %137 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %139 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %140 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %142 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %6, align 8
  %143 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %142, i32 0, i32 0
  store %struct.mlxreg_core_data* %141, %struct.mlxreg_core_data** %143, align 8
  %144 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %3, align 8
  %145 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %149 = call i32 @devm_led_classdev_register(i32* %147, %struct.led_classdev* %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %111
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %2, align 4
  br label %185

154:                                              ; preds = %111
  %155 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %156 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %161 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %162 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @mlxreg_led_brightness_set(%struct.led_classdev* %160, i32 %163)
  br label %165

165:                                              ; preds = %159, %154
  %166 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %167 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %170 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %173 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %176 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dev_info(i32 %168, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %171, i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %165, %65
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  %182 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %183 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %182, i32 1
  store %struct.mlxreg_core_data* %183, %struct.mlxreg_core_data** %5, align 8
  br label %18

184:                                              ; preds = %18
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %152, %51, %33
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.mlxreg_led_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @mlxreg_led_brightness_set(%struct.led_classdev*, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.led_classdev*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
