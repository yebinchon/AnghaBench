; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ipack_device = type { i32 }
%struct.ipack_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ipack_device*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ipack_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipack_bus_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ipack_device*, align 8
  %5 = alloca %struct.ipack_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ipack_device* @to_ipack_dev(%struct.device* %6)
  store %struct.ipack_device* %7, %struct.ipack_device** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ipack_driver* @to_ipack_driver(i32 %10)
  store %struct.ipack_driver* %11, %struct.ipack_driver** %5, align 8
  %12 = load %struct.ipack_driver*, %struct.ipack_driver** %5, align 8
  %13 = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*)** %15, align 8
  %17 = icmp ne i32 (%struct.ipack_device*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load %struct.ipack_driver*, %struct.ipack_driver** %5, align 8
  %23 = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ipack_device*)*, i32 (%struct.ipack_device*)** %25, align 8
  %27 = load %struct.ipack_device*, %struct.ipack_device** %4, align 8
  %28 = call i32 %26(%struct.ipack_device* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ipack_device* @to_ipack_dev(%struct.device*) #1

declare dso_local %struct.ipack_driver* @to_ipack_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
