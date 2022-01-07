; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_add_battery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_add_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.wm97xx_batt_pdata*, i32 }
%struct.wm97xx_batt_pdata = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"wm97xx-battery\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*, %struct.wm97xx_batt_pdata*)* @wm97xx_add_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_add_battery(%struct.wm97xx* %0, %struct.wm97xx_batt_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca %struct.wm97xx_batt_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store %struct.wm97xx_batt_pdata* %1, %struct.wm97xx_batt_pdata** %5, align 8
  %7 = call %struct.TYPE_7__* @platform_device_alloc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 -1)
  %8 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %9 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %8, i32 0, i32 0
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %9, align 8
  %10 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %11 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %19 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.TYPE_7__* %20, %struct.wm97xx* %21)
  %23 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %24 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %27 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %25, i32* %30, align 8
  %31 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %5, align 8
  %32 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %33 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.wm97xx_batt_pdata* %31, %struct.wm97xx_batt_pdata** %36, align 8
  %37 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %38 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i32 @platform_device_add(%struct.TYPE_7__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %17
  %44 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %45 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @platform_device_put(%struct.TYPE_7__* %46)
  br label %48

48:                                               ; preds = %43, %17
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_7__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_7__*, %struct.wm97xx*) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
