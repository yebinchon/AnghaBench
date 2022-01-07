; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3944.c_lp3944_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3944.c_lp3944_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lp3944_data = type { %struct.lp3944_led_data* }
%struct.lp3944_led_data = type { i32, i32, %struct.TYPE_3__, %struct.i2c_client* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.lp3944_platform_data = type { i32, %struct.lp3944_led* }
%struct.lp3944_led = type { i32, i32, i32 }

@lp3944_led_set_brightness = common dso_local global i32 0, align 4
@lp3944_led_set_blink = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"couldn't register LED %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s couldn't set STATUS %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.lp3944_data*, %struct.lp3944_platform_data*)* @lp3944_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3944_configure(%struct.i2c_client* %0, %struct.lp3944_data* %1, %struct.lp3944_platform_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.lp3944_data*, align 8
  %7 = alloca %struct.lp3944_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lp3944_led*, align 8
  %11 = alloca %struct.lp3944_led_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.lp3944_data* %1, %struct.lp3944_data** %6, align 8
  store %struct.lp3944_platform_data* %2, %struct.lp3944_platform_data** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %111, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.lp3944_platform_data*, %struct.lp3944_platform_data** %7, align 8
  %15 = getelementptr inbounds %struct.lp3944_platform_data, %struct.lp3944_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %114

18:                                               ; preds = %12
  %19 = load %struct.lp3944_platform_data*, %struct.lp3944_platform_data** %7, align 8
  %20 = getelementptr inbounds %struct.lp3944_platform_data, %struct.lp3944_platform_data* %19, i32 0, i32 1
  %21 = load %struct.lp3944_led*, %struct.lp3944_led** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %21, i64 %23
  store %struct.lp3944_led* %24, %struct.lp3944_led** %10, align 8
  %25 = load %struct.lp3944_data*, %struct.lp3944_data** %6, align 8
  %26 = getelementptr inbounds %struct.lp3944_data, %struct.lp3944_data* %25, i32 0, i32 0
  %27 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %27, i64 %29
  store %struct.lp3944_led_data* %30, %struct.lp3944_led_data** %11, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %33 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %32, i32 0, i32 3
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %36 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %38 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %109 [
    i32 130, label %40
    i32 129, label %40
    i32 128, label %108
  ]

40:                                               ; preds = %18, %18
  %41 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %42 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %45 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %47 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %50 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %53 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @lp3944_led_set_brightness, align 4
  %56 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %57 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @lp3944_led_set_blink, align 4
  %60 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %61 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %64 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %65 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %70 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %69, i32 0, i32 2
  %71 = call i32 @led_classdev_register(i32* %68, %struct.TYPE_3__* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %40
  %75 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %78 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %115

82:                                               ; preds = %40
  %83 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %84 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %87 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %90 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %91 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @lp3944_led_set(%struct.lp3944_led_data* %89, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %82
  %97 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %11, align 8
  %100 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.lp3944_led*, %struct.lp3944_led** %10, align 8
  %104 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105)
  br label %115

107:                                              ; preds = %82
  br label %110

108:                                              ; preds = %18
  br label %109

109:                                              ; preds = %18, %108
  br label %110

110:                                              ; preds = %109, %107
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %12

114:                                              ; preds = %12
  store i32 0, i32* %4, align 4
  br label %151

115:                                              ; preds = %96, %74
  %116 = load i32, i32* %8, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %145, %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %121
  %125 = load %struct.lp3944_platform_data*, %struct.lp3944_platform_data** %7, align 8
  %126 = getelementptr inbounds %struct.lp3944_platform_data, %struct.lp3944_platform_data* %125, i32 0, i32 1
  %127 = load %struct.lp3944_led*, %struct.lp3944_led** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %127, i64 %129
  %131 = getelementptr inbounds %struct.lp3944_led, %struct.lp3944_led* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %143 [
    i32 130, label %133
    i32 129, label %133
    i32 128, label %142
  ]

133:                                              ; preds = %124, %124
  %134 = load %struct.lp3944_data*, %struct.lp3944_data** %6, align 8
  %135 = getelementptr inbounds %struct.lp3944_data, %struct.lp3944_data* %134, i32 0, i32 0
  %136 = load %struct.lp3944_led_data*, %struct.lp3944_led_data** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %136, i64 %138
  %140 = getelementptr inbounds %struct.lp3944_led_data, %struct.lp3944_led_data* %139, i32 0, i32 2
  %141 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %140)
  br label %144

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %124, %142
  br label %144

144:                                              ; preds = %143, %133
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %8, align 4
  br label %121

148:                                              ; preds = %121
  br label %149

149:                                              ; preds = %148, %115
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %114
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @lp3944_led_set(%struct.lp3944_led_data*, i32) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
