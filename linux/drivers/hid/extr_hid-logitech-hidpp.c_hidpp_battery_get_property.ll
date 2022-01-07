; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i8* }
%struct.hidpp_device = type { i8*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@POWER_SUPPLY_SCOPE_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Logitech \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Logitech\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @hidpp_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.hidpp_device*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.hidpp_device* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.hidpp_device* %10, %struct.hidpp_device** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %75 [
    i32 128, label %12
    i32 135, label %19
    i32 134, label %26
    i32 130, label %33
    i32 131, label %37
    i32 132, label %44
    i32 133, label %64
    i32 129, label %67
  ]

12:                                               ; preds = %3
  %13 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %14 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  store i32 %16, i32* %18, align 8
  br label %78

19:                                               ; preds = %3
  %20 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %21 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 8
  br label %78

26:                                               ; preds = %3
  %27 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %28 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 8
  br label %78

33:                                               ; preds = %3
  %34 = load i32, i32* @POWER_SUPPLY_SCOPE_DEVICE, align 4
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 8
  br label %78

37:                                               ; preds = %3
  %38 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %39 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %43 = bitcast %union.power_supply_propval* %42 to i32*
  store i32 %41, i32* %43, align 8
  br label %78

44:                                               ; preds = %3
  %45 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %46 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %52 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 9
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i8**
  store i8* %54, i8** %56, align 8
  br label %63

57:                                               ; preds = %44
  %58 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %59 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i8**
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %57, %50
  br label %78

64:                                               ; preds = %3
  %65 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %66 = bitcast %union.power_supply_propval* %65 to i8**
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %66, align 8
  br label %78

67:                                               ; preds = %3
  %68 = load %struct.hidpp_device*, %struct.hidpp_device** %7, align 8
  %69 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i8**
  store i8* %72, i8** %74, align 8
  br label %78

75:                                               ; preds = %3
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %67, %64, %63, %37, %33, %26, %19, %12
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local %struct.hidpp_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
