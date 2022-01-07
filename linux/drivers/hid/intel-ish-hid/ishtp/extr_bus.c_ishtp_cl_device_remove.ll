; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.ishtp_cl_device = type { i32, i32* }
%struct.ishtp_cl_driver = type { i32 (%struct.ishtp_cl_device.0*)* }
%struct.ishtp_cl_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ishtp_cl_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishtp_cl_device_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ishtp_cl_device*, align 8
  %5 = alloca %struct.ishtp_cl_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ishtp_cl_device* @to_ishtp_cl_device(%struct.device* %6)
  store %struct.ishtp_cl_device* %7, %struct.ishtp_cl_device** %4, align 8
  %8 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %4, align 8
  %9 = icmp ne %struct.ishtp_cl_device* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %46

16:                                               ; preds = %10
  %17 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %4, align 8
  %18 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %4, align 8
  %23 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %4, align 8
  %25 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %24, i32 0, i32 0
  %26 = call i32 @cancel_work_sync(i32* %25)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call %struct.ishtp_cl_driver* @to_ishtp_cl_driver(i32* %30)
  store %struct.ishtp_cl_driver* %31, %struct.ishtp_cl_driver** %5, align 8
  %32 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %5, align 8
  %33 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %32, i32 0, i32 0
  %34 = load i32 (%struct.ishtp_cl_device.0*)*, i32 (%struct.ishtp_cl_device.0*)** %33, align 8
  %35 = icmp ne i32 (%struct.ishtp_cl_device.0*)* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  store i32 0, i32* %2, align 4
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %5, align 8
  %41 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %40, i32 0, i32 0
  %42 = load i32 (%struct.ishtp_cl_device.0*)*, i32 (%struct.ishtp_cl_device.0*)** %41, align 8
  %43 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %4, align 8
  %44 = bitcast %struct.ishtp_cl_device* %43 to %struct.ishtp_cl_device.0*
  %45 = call i32 %42(%struct.ishtp_cl_device.0* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %36, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ishtp_cl_device* @to_ishtp_cl_device(%struct.device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local %struct.ishtp_cl_driver* @to_ishtp_cl_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
