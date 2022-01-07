; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.ipack_device = type { i32 }
%struct.ipack_driver = type { i32 }
%struct.ipack_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @ipack_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipack_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca %struct.ipack_device*, align 8
  %6 = alloca %struct.ipack_driver*, align 8
  %7 = alloca %struct.ipack_device_id*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device_driver* %1, %struct.device_driver** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ipack_device* @to_ipack_dev(%struct.device* %8)
  store %struct.ipack_device* %9, %struct.ipack_device** %5, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %11 = call %struct.ipack_driver* @to_ipack_driver(%struct.device_driver* %10)
  store %struct.ipack_driver* %11, %struct.ipack_driver** %6, align 8
  %12 = load %struct.ipack_driver*, %struct.ipack_driver** %6, align 8
  %13 = getelementptr inbounds %struct.ipack_driver, %struct.ipack_driver* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ipack_device*, %struct.ipack_device** %5, align 8
  %16 = call %struct.ipack_device_id* @ipack_match_id(i32 %14, %struct.ipack_device* %15)
  store %struct.ipack_device_id* %16, %struct.ipack_device_id** %7, align 8
  %17 = load %struct.ipack_device_id*, %struct.ipack_device_id** %7, align 8
  %18 = icmp ne %struct.ipack_device_id* %17, null
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  ret i32 %20
}

declare dso_local %struct.ipack_device* @to_ipack_dev(%struct.device*) #1

declare dso_local %struct.ipack_driver* @to_ipack_driver(%struct.device_driver*) #1

declare dso_local %struct.ipack_device_id* @ipack_match_id(i32, %struct.ipack_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
