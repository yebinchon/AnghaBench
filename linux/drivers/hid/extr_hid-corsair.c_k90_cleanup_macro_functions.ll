; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_k90_cleanup_macro_functions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_k90_cleanup_macro_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.corsair_drvdata = type { %struct.k90_drvdata* }
%struct.k90_drvdata = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.k90_drvdata* }

@k90_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @k90_cleanup_macro_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k90_cleanup_macro_functions(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.corsair_drvdata*, align 8
  %4 = alloca %struct.k90_drvdata*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = call %struct.corsair_drvdata* @hid_get_drvdata(%struct.hid_device* %5)
  store %struct.corsair_drvdata* %6, %struct.corsair_drvdata** %3, align 8
  %7 = load %struct.corsair_drvdata*, %struct.corsair_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.corsair_drvdata, %struct.corsair_drvdata* %7, i32 0, i32 0
  %9 = load %struct.k90_drvdata*, %struct.k90_drvdata** %8, align 8
  store %struct.k90_drvdata* %9, %struct.k90_drvdata** %4, align 8
  %10 = load %struct.k90_drvdata*, %struct.k90_drvdata** %4, align 8
  %11 = icmp ne %struct.k90_drvdata* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @sysfs_remove_group(i32* %15, i32* @k90_attr_group)
  %17 = load %struct.k90_drvdata*, %struct.k90_drvdata** %4, align 8
  %18 = getelementptr inbounds %struct.k90_drvdata, %struct.k90_drvdata* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.k90_drvdata*, %struct.k90_drvdata** %4, align 8
  %21 = getelementptr inbounds %struct.k90_drvdata, %struct.k90_drvdata* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call i32 @led_classdev_unregister(%struct.TYPE_6__* %22)
  %24 = load %struct.k90_drvdata*, %struct.k90_drvdata** %4, align 8
  %25 = getelementptr inbounds %struct.k90_drvdata, %struct.k90_drvdata* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = call i32 @cancel_work_sync(i32* %26)
  %28 = load %struct.k90_drvdata*, %struct.k90_drvdata** %4, align 8
  %29 = getelementptr inbounds %struct.k90_drvdata, %struct.k90_drvdata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.k90_drvdata*, %struct.k90_drvdata** %31, align 8
  %33 = call i32 @kfree(%struct.k90_drvdata* %32)
  %34 = load %struct.k90_drvdata*, %struct.k90_drvdata** %4, align 8
  %35 = call i32 @kfree(%struct.k90_drvdata* %34)
  br label %36

36:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.corsair_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.k90_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
