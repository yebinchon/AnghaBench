; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_set_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_th_driver = type { i32 (%struct.intel_th_device.0*, i32)* }
%struct.intel_th_device.0 = type opaque

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_th_set_output(%struct.intel_th_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_th_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_th_device*, align 8
  %7 = alloca %struct.intel_th_driver*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %9 = call %struct.intel_th_device* @to_intel_th_hub(%struct.intel_th_device* %8)
  store %struct.intel_th_device* %9, %struct.intel_th_device** %6, align 8
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %11 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.intel_th_driver* @to_intel_th_driver(i32 %13)
  store %struct.intel_th_driver* %14, %struct.intel_th_driver** %7, align 8
  %15 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %16 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.intel_th_driver*, %struct.intel_th_driver** %7, align 8
  %22 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.intel_th_device.0*, i32)*, i32 (%struct.intel_th_device.0*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.intel_th_device.0*, i32)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %20
  %29 = load %struct.intel_th_driver*, %struct.intel_th_driver** %7, align 8
  %30 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.intel_th_device.0*, i32)*, i32 (%struct.intel_th_device.0*, i32)** %30, align 8
  %32 = load %struct.intel_th_device*, %struct.intel_th_device** %6, align 8
  %33 = bitcast %struct.intel_th_device* %32 to %struct.intel_th_device.0*
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %31(%struct.intel_th_device.0* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %25, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.intel_th_device* @to_intel_th_hub(%struct.intel_th_device*) #1

declare dso_local %struct.intel_th_driver* @to_intel_th_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
