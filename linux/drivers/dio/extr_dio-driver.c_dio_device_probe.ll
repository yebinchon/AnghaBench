; ModuleID = '/home/carl/AnghaBench/linux/drivers/dio/extr_dio-driver.c_dio_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dio/extr_dio-driver.c_dio_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dio_driver = type { i32 (%struct.dio_dev*, %struct.dio_device_id*)*, i32 }
%struct.dio_dev = type opaque
%struct.dio_device_id = type opaque
%struct.dio_dev.0 = type { %struct.dio_driver* }
%struct.dio_device_id.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dio_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_device_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dio_driver*, align 8
  %5 = alloca %struct.dio_dev.0*, align 8
  %6 = alloca %struct.dio_device_id.1*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dio_driver* @to_dio_driver(i32 %9)
  store %struct.dio_driver* %10, %struct.dio_driver** %4, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call %struct.dio_dev.0* @to_dio_dev(%struct.device* %11)
  store %struct.dio_dev.0* %12, %struct.dio_dev.0** %5, align 8
  %13 = load %struct.dio_dev.0*, %struct.dio_dev.0** %5, align 8
  %14 = getelementptr inbounds %struct.dio_dev.0, %struct.dio_dev.0* %13, i32 0, i32 0
  %15 = load %struct.dio_driver*, %struct.dio_driver** %14, align 8
  %16 = icmp ne %struct.dio_driver* %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %1
  %18 = load %struct.dio_driver*, %struct.dio_driver** %4, align 8
  %19 = getelementptr inbounds %struct.dio_driver, %struct.dio_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.dio_dev*, %struct.dio_device_id*)*, i32 (%struct.dio_dev*, %struct.dio_device_id*)** %19, align 8
  %21 = icmp ne i32 (%struct.dio_dev*, %struct.dio_device_id*)* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load %struct.dio_driver*, %struct.dio_driver** %4, align 8
  %24 = getelementptr inbounds %struct.dio_driver, %struct.dio_driver* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dio_dev.0*, %struct.dio_dev.0** %5, align 8
  %27 = call %struct.dio_device_id.1* @dio_match_device(i32 %25, %struct.dio_dev.0* %26)
  store %struct.dio_device_id.1* %27, %struct.dio_device_id.1** %6, align 8
  %28 = load %struct.dio_device_id.1*, %struct.dio_device_id.1** %6, align 8
  %29 = icmp ne %struct.dio_device_id.1* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.dio_driver*, %struct.dio_driver** %4, align 8
  %32 = getelementptr inbounds %struct.dio_driver, %struct.dio_driver* %31, i32 0, i32 0
  %33 = load i32 (%struct.dio_dev*, %struct.dio_device_id*)*, i32 (%struct.dio_dev*, %struct.dio_device_id*)** %32, align 8
  %34 = load %struct.dio_dev.0*, %struct.dio_dev.0** %5, align 8
  %35 = bitcast %struct.dio_dev.0* %34 to %struct.dio_dev*
  %36 = load %struct.dio_device_id.1*, %struct.dio_device_id.1** %6, align 8
  %37 = bitcast %struct.dio_device_id.1* %36 to %struct.dio_device_id*
  %38 = call i32 %33(%struct.dio_dev* %35, %struct.dio_device_id* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %22
  %40 = load i32, i32* %3, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.dio_driver*, %struct.dio_driver** %4, align 8
  %44 = load %struct.dio_dev.0*, %struct.dio_dev.0** %5, align 8
  %45 = getelementptr inbounds %struct.dio_dev.0, %struct.dio_dev.0* %44, i32 0, i32 0
  store %struct.dio_driver* %43, %struct.dio_driver** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %17, %1
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.dio_driver* @to_dio_driver(i32) #1

declare dso_local %struct.dio_dev.0* @to_dio_dev(%struct.device*) #1

declare dso_local %struct.dio_device_id.1* @dio_match_device(i32, %struct.dio_dev.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
