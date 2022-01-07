; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_register_led_classdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-bd2802.c_bd2802_register_led_classdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd2802_led = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"led1_R\00", align 1
@LED_OFF = common dso_local global i8* null, align 8
@bd2802_set_led1r_brightness = common dso_local global i32 0, align 4
@bd2802_set_led1r_blink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't register LED %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"led1_G\00", align 1
@bd2802_set_led1g_brightness = common dso_local global i32 0, align 4
@bd2802_set_led1g_blink = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"led1_B\00", align 1
@bd2802_set_led1b_brightness = common dso_local global i32 0, align 4
@bd2802_set_led1b_blink = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"led2_R\00", align 1
@bd2802_set_led2r_brightness = common dso_local global i32 0, align 4
@bd2802_set_led2r_blink = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"led2_G\00", align 1
@bd2802_set_led2g_brightness = common dso_local global i32 0, align 4
@bd2802_set_led2g_blink = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"led2_B\00", align 1
@bd2802_set_led2b_brightness = common dso_local global i32 0, align 4
@bd2802_set_led2b_blink = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd2802_led*)* @bd2802_register_led_classdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd2802_register_led_classdev(%struct.bd2802_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bd2802_led*, align 8
  %4 = alloca i32, align 4
  store %struct.bd2802_led* %0, %struct.bd2802_led** %3, align 8
  %5 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %6 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i8*, i8** @LED_OFF, align 8
  %9 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %10 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i8* %8, i8** %11, align 8
  %12 = load i32, i32* @bd2802_set_led1r_brightness, align 4
  %13 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %14 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* @bd2802_set_led1r_blink, align 4
  %17 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %18 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %21 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %20, i32 0, i32 6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %25 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %24, i32 0, i32 0
  %26 = call i32 @led_classdev_register(i32* %23, %struct.TYPE_5__* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %31 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %30, i32 0, i32 6
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %35 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %241

39:                                               ; preds = %1
  %40 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %41 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 8
  %43 = load i8*, i8** @LED_OFF, align 8
  %44 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %45 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* @bd2802_set_led1g_brightness, align 4
  %48 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %49 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @bd2802_set_led1g_blink, align 4
  %52 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %53 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %56 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %55, i32 0, i32 6
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %60 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %59, i32 0, i32 1
  %61 = call i32 @led_classdev_register(i32* %58, %struct.TYPE_5__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %39
  %65 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %66 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %65, i32 0, i32 6
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %70 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %237

74:                                               ; preds = %39
  %75 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %76 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %77, align 8
  %78 = load i8*, i8** @LED_OFF, align 8
  %79 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %80 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i8* %78, i8** %81, align 8
  %82 = load i32, i32* @bd2802_set_led1b_brightness, align 4
  %83 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %84 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @bd2802_set_led1b_blink, align 4
  %87 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %88 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %91 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %90, i32 0, i32 6
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %95 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %94, i32 0, i32 2
  %96 = call i32 @led_classdev_register(i32* %93, %struct.TYPE_5__* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %74
  %100 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %101 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %100, i32 0, i32 6
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %105 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %107)
  br label %233

109:                                              ; preds = %74
  %110 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %111 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %112, align 8
  %113 = load i8*, i8** @LED_OFF, align 8
  %114 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %115 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  store i8* %113, i8** %116, align 8
  %117 = load i32, i32* @bd2802_set_led2r_brightness, align 4
  %118 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %119 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @bd2802_set_led2r_blink, align 4
  %122 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %123 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 4
  %125 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %126 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %125, i32 0, i32 6
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %130 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %129, i32 0, i32 3
  %131 = call i32 @led_classdev_register(i32* %128, %struct.TYPE_5__* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %109
  %135 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %136 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %135, i32 0, i32 6
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %140 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %142)
  br label %229

144:                                              ; preds = %109
  %145 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %146 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %147, align 8
  %148 = load i8*, i8** @LED_OFF, align 8
  %149 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %150 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  store i8* %148, i8** %151, align 8
  %152 = load i32, i32* @bd2802_set_led2g_brightness, align 4
  %153 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %154 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 8
  %156 = load i32, i32* @bd2802_set_led2g_blink, align 4
  %157 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %158 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 4
  %160 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %161 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %160, i32 0, i32 6
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %165 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %164, i32 0, i32 4
  %166 = call i32 @led_classdev_register(i32* %163, %struct.TYPE_5__* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %144
  %170 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %171 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %170, i32 0, i32 6
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %175 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @dev_err(i32* %173, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %177)
  br label %225

179:                                              ; preds = %144
  %180 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %181 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %182, align 8
  %183 = load i8*, i8** @LED_OFF, align 8
  %184 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %185 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  store i8* %183, i8** %186, align 8
  %187 = load i32, i32* @bd2802_set_led2b_brightness, align 4
  %188 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %189 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 8
  %191 = load i32, i32* @bd2802_set_led2b_blink, align 4
  %192 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %193 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %196 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %197 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %195
  store i32 %200, i32* %198, align 8
  %201 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %202 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %201, i32 0, i32 6
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %206 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %205, i32 0, i32 5
  %207 = call i32 @led_classdev_register(i32* %204, %struct.TYPE_5__* %206)
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %179
  %211 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %212 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %211, i32 0, i32 6
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %216 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @dev_err(i32* %214, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %218)
  br label %221

220:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %243

221:                                              ; preds = %210
  %222 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %223 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %222, i32 0, i32 4
  %224 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %223)
  br label %225

225:                                              ; preds = %221, %169
  %226 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %227 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %226, i32 0, i32 3
  %228 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %227)
  br label %229

229:                                              ; preds = %225, %134
  %230 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %231 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %230, i32 0, i32 2
  %232 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %231)
  br label %233

233:                                              ; preds = %229, %99
  %234 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %235 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %234, i32 0, i32 1
  %236 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %235)
  br label %237

237:                                              ; preds = %233, %64
  %238 = load %struct.bd2802_led*, %struct.bd2802_led** %3, align 8
  %239 = getelementptr inbounds %struct.bd2802_led, %struct.bd2802_led* %238, i32 0, i32 0
  %240 = call i32 @led_classdev_unregister(%struct.TYPE_5__* %239)
  br label %241

241:                                              ; preds = %237, %29
  %242 = load i32, i32* %4, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %241, %220
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
