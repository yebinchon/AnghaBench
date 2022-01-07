; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_battery_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_battery_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32, i32 }
%struct.hid_usage = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8* }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i8* null, align 8
@WACOM_POWER_SUPPLY_STATUS_AUTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @wacom_wac_battery_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_battery_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wacom*, align 8
  %10 = alloca %struct.wacom_wac*, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %13 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.wacom* %13, %struct.wacom** %9, align 8
  %14 = load %struct.wacom*, %struct.wacom** %9, align 8
  %15 = getelementptr inbounds %struct.wacom, %struct.wacom* %14, i32 0, i32 0
  store %struct.wacom_wac* %15, %struct.wacom_wac** %10, align 8
  %16 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %17 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wacom_equivalent_usage(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %90 [
    i32 130, label %21
    i32 128, label %52
    i32 129, label %74
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** @POWER_SUPPLY_STATUS_UNKNOWN, align 8
  %26 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %27 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i8* %25, i8** %28, align 8
  br label %51

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %30, 100
  %32 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %33 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %36 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  %39 = sdiv i32 %31, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %42 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %45 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i8*, i8** @WACOM_POWER_SUPPLY_STATUS_AUTO, align 8
  %48 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %49 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i8* %47, i8** %50, align 8
  br label %51

51:                                               ; preds = %29, %24
  br label %90

52:                                               ; preds = %4
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 100
  %55 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %56 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %59 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = sdiv i32 %54, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %65 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %68 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load i8*, i8** @WACOM_POWER_SUPPLY_STATUS_AUTO, align 8
  %71 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %72 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i8* %70, i8** %73, align 8
  br label %90

74:                                               ; preds = %4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %77 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %81 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %84 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load i8*, i8** @WACOM_POWER_SUPPLY_STATUS_AUTO, align 8
  %87 = load %struct.wacom_wac*, %struct.wacom_wac** %10, align 8
  %88 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i8* %86, i8** %89, align 8
  br label %90

90:                                               ; preds = %4, %74, %52, %51
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
