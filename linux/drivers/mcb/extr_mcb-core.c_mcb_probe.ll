; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mcb_driver = type { i32 (%struct.mcb_device*, %struct.mcb_device_id*)*, i32 }
%struct.mcb_device = type opaque
%struct.mcb_device_id = type opaque
%struct.mcb_device.0 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.mcb_device_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mcb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcb_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mcb_driver*, align 8
  %5 = alloca %struct.mcb_device.0*, align 8
  %6 = alloca %struct.mcb_device_id.1*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mcb_driver* @to_mcb_driver(i32 %11)
  store %struct.mcb_driver* %12, %struct.mcb_driver** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.mcb_device.0* @to_mcb_device(%struct.device* %13)
  store %struct.mcb_device.0* %14, %struct.mcb_device.0** %5, align 8
  %15 = load %struct.mcb_driver*, %struct.mcb_driver** %4, align 8
  %16 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mcb_device.0*, %struct.mcb_device.0** %5, align 8
  %19 = call %struct.mcb_device_id.1* @mcb_match_id(i32 %17, %struct.mcb_device.0* %18)
  store %struct.mcb_device_id.1* %19, %struct.mcb_device_id.1** %6, align 8
  %20 = load %struct.mcb_device_id.1*, %struct.mcb_device_id.1** %6, align 8
  %21 = icmp ne %struct.mcb_device_id.1* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %58

25:                                               ; preds = %1
  %26 = load %struct.mcb_device.0*, %struct.mcb_device.0** %5, align 8
  %27 = getelementptr inbounds %struct.mcb_device.0, %struct.mcb_device.0* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.module*, %struct.module** %32, align 8
  store %struct.module* %33, %struct.module** %7, align 8
  %34 = load %struct.module*, %struct.module** %7, align 8
  %35 = call i32 @try_module_get(%struct.module* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %58

40:                                               ; preds = %25
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @get_device(%struct.device* %41)
  %43 = load %struct.mcb_driver*, %struct.mcb_driver** %4, align 8
  %44 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %43, i32 0, i32 0
  %45 = load i32 (%struct.mcb_device*, %struct.mcb_device_id*)*, i32 (%struct.mcb_device*, %struct.mcb_device_id*)** %44, align 8
  %46 = load %struct.mcb_device.0*, %struct.mcb_device.0** %5, align 8
  %47 = bitcast %struct.mcb_device.0* %46 to %struct.mcb_device*
  %48 = load %struct.mcb_device_id.1*, %struct.mcb_device_id.1** %6, align 8
  %49 = bitcast %struct.mcb_device_id.1* %48 to %struct.mcb_device_id*
  %50 = call i32 %45(%struct.mcb_device* %47, %struct.mcb_device_id* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load %struct.module*, %struct.module** %7, align 8
  %55 = call i32 @module_put(%struct.module* %54)
  br label %56

56:                                               ; preds = %53, %40
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %37, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mcb_driver* @to_mcb_driver(i32) #1

declare dso_local %struct.mcb_device.0* @to_mcb_device(%struct.device*) #1

declare dso_local %struct.mcb_device_id.1* @mcb_match_id(i32, %struct.mcb_device.0*) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
