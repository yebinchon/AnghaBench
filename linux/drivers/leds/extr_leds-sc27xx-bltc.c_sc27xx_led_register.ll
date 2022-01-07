; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sc27xx-bltc.c_sc27xx_led_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-sc27xx-bltc.c_sc27xx_led_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sc27xx_led_priv = type { %struct.sc27xx_led*, i32 }
%struct.sc27xx_led = type { i32, %struct.TYPE_2__, i32, %struct.sc27xx_led_priv*, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }
%struct.led_init_data = type { i8*, i8*, i32 }

@SC27XX_LEDS_MAX = common dso_local global i32 0, align 4
@sc27xx_led_set = common dso_local global i32 0, align 4
@sc27xx_led_pattern_set = common dso_local global i32 0, align 4
@sc27xx_led_pattern_clear = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sc27xx\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sc27xx_led_priv*)* @sc27xx_led_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_led_register(%struct.device* %0, %struct.sc27xx_led_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sc27xx_led_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sc27xx_led*, align 8
  %9 = alloca %struct.led_init_data, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sc27xx_led_priv* %1, %struct.sc27xx_led_priv** %5, align 8
  %10 = load %struct.sc27xx_led_priv*, %struct.sc27xx_led_priv** %5, align 8
  %11 = getelementptr inbounds %struct.sc27xx_led_priv, %struct.sc27xx_led_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @sc27xx_led_init(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %73, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SC27XX_LEDS_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = load %struct.sc27xx_led_priv*, %struct.sc27xx_led_priv** %5, align 8
  %25 = getelementptr inbounds %struct.sc27xx_led_priv, %struct.sc27xx_led_priv* %24, i32 0, i32 0
  %26 = load %struct.sc27xx_led*, %struct.sc27xx_led** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %26, i64 %28
  store %struct.sc27xx_led* %29, %struct.sc27xx_led** %8, align 8
  %30 = bitcast %struct.led_init_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %32 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %73

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %39 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sc27xx_led_priv*, %struct.sc27xx_led_priv** %5, align 8
  %41 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %42 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %41, i32 0, i32 3
  store %struct.sc27xx_led_priv* %40, %struct.sc27xx_led_priv** %42, align 8
  %43 = load i32, i32* @sc27xx_led_set, align 4
  %44 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %45 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @sc27xx_led_pattern_set, align 4
  %48 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %49 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @sc27xx_led_pattern_clear, align 4
  %52 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %53 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %56 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %59 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %9, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.sc27xx_led*, %struct.sc27xx_led** %8, align 8
  %66 = getelementptr inbounds %struct.sc27xx_led, %struct.sc27xx_led* %65, i32 0, i32 1
  %67 = call i32 @devm_led_classdev_register_ext(%struct.device* %64, %struct.TYPE_2__* %66, %struct.led_init_data* %9)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %36
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %77

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %72, %35
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %19

76:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %70, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @sc27xx_led_init(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @devm_led_classdev_register_ext(%struct.device*, %struct.TYPE_2__*, %struct.led_init_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
