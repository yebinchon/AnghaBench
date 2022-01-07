; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_corsair_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_corsair_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.corsair_drvdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HID_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @corsair_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corsair_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.corsair_drvdata*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.corsair_drvdata* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.corsair_drvdata* %12, %struct.corsair_drvdata** %10, align 8
  %13 = load %struct.corsair_drvdata*, %struct.corsair_drvdata** %10, align 8
  %14 = getelementptr inbounds %struct.corsair_drvdata, %struct.corsair_drvdata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

18:                                               ; preds = %4
  %19 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %20 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HID_USAGE, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %36 [
    i32 129, label %24
    i32 128, label %30
  ]

24:                                               ; preds = %18
  %25 = load %struct.corsair_drvdata*, %struct.corsair_drvdata** %10, align 8
  %26 = getelementptr inbounds %struct.corsair_drvdata, %struct.corsair_drvdata* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %37

30:                                               ; preds = %18
  %31 = load %struct.corsair_drvdata*, %struct.corsair_drvdata** %10, align 8
  %32 = getelementptr inbounds %struct.corsair_drvdata, %struct.corsair_drvdata* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %37

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36, %30, %24
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.corsair_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
