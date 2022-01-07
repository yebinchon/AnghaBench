; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.fsi_slave = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@fsi_bus_type = common dso_local global i32 0, align 4
@fsi_device_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsi_device* (%struct.fsi_slave*)* @fsi_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsi_device* @fsi_create_device(%struct.fsi_slave* %0) #0 {
  %2 = alloca %struct.fsi_device*, align 8
  %3 = alloca %struct.fsi_slave*, align 8
  %4 = alloca %struct.fsi_device*, align 8
  store %struct.fsi_slave* %0, %struct.fsi_slave** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.fsi_device* @kzalloc(i32 24, i32 %5)
  store %struct.fsi_device* %6, %struct.fsi_device** %4, align 8
  %7 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %8 = icmp ne %struct.fsi_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.fsi_device* null, %struct.fsi_device** %2, align 8
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %12 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %11, i32 0, i32 0
  %13 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %14 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32* %12, i32** %15, align 8
  %16 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %17 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32* @fsi_bus_type, i32** %18, align 8
  %19 = load i32, i32* @fsi_device_release, align 4
  %20 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %21 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  store %struct.fsi_device* %23, %struct.fsi_device** %2, align 8
  br label %24

24:                                               ; preds = %10, %9
  %25 = load %struct.fsi_device*, %struct.fsi_device** %2, align 8
  ret %struct.fsi_device* %25
}

declare dso_local %struct.fsi_device* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
