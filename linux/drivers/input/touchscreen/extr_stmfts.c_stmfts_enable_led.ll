; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_enable_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_enable_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfts_data = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ledvdd\00", align 1
@STMFTS_DEV_NAME = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@stmfts_brightness_set = common dso_local global i32 0, align 4
@stmfts_brightness_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmfts_data*)* @stmfts_enable_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfts_enable_led(%struct.stmfts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmfts_data*, align 8
  %4 = alloca i32, align 4
  store %struct.stmfts_data* %0, %struct.stmfts_data** %3, align 8
  %5 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %6 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @devm_regulator_get(i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %11 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %13 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %19 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %59

22:                                               ; preds = %1
  %23 = load i32, i32* @STMFTS_DEV_NAME, align 4
  %24 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %25 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @LED_ON, align 4
  %28 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %29 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @LED_OFF, align 4
  %32 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %33 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @stmfts_brightness_set, align 4
  %36 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %37 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @stmfts_brightness_get, align 4
  %40 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %41 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %44 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %48 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %47, i32 0, i32 1
  %49 = call i32 @devm_led_classdev_register(i32* %46, %struct.TYPE_4__* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %22
  %53 = load %struct.stmfts_data*, %struct.stmfts_data** %3, align 8
  %54 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @devm_regulator_put(i32 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %52, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @devm_regulator_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
