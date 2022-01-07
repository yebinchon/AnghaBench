; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_output_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_output_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_th_driver = type { %struct.TYPE_3__, i32 (%struct.intel_th_device.0*)* }
%struct.TYPE_3__ = type { i32 }
%struct.intel_th_device.0 = type opaque
%struct.intel_th = type { i32 (%struct.intel_th*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_th_device*)* @intel_th_output_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_th_output_deactivate(%struct.intel_th_device* %0) #0 {
  %2 = alloca %struct.intel_th_device*, align 8
  %3 = alloca %struct.intel_th_driver*, align 8
  %4 = alloca %struct.intel_th*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %2, align 8
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %6 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.intel_th_driver* @to_intel_th_driver_or_null(i32 %8)
  store %struct.intel_th_driver* %9, %struct.intel_th_driver** %3, align 8
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %11 = call %struct.intel_th* @to_intel_th(%struct.intel_th_device* %10)
  store %struct.intel_th* %11, %struct.intel_th** %4, align 8
  %12 = load %struct.intel_th_driver*, %struct.intel_th_driver** %3, align 8
  %13 = icmp ne %struct.intel_th_driver* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.intel_th_driver*, %struct.intel_th_driver** %3, align 8
  %17 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %16, i32 0, i32 1
  %18 = load i32 (%struct.intel_th_device.0*)*, i32 (%struct.intel_th_device.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.intel_th_device.0*)* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.intel_th_driver*, %struct.intel_th_driver** %3, align 8
  %22 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %21, i32 0, i32 1
  %23 = load i32 (%struct.intel_th_device.0*)*, i32 (%struct.intel_th_device.0*)** %22, align 8
  %24 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %25 = bitcast %struct.intel_th_device* %24 to %struct.intel_th_device.0*
  %26 = call i32 %23(%struct.intel_th_device.0* %25)
  br label %30

27:                                               ; preds = %15
  %28 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %29 = call i32 @intel_th_trace_disable(%struct.intel_th_device* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %32 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %31, i32 0, i32 0
  %33 = load i32 (%struct.intel_th*)*, i32 (%struct.intel_th*)** %32, align 8
  %34 = icmp ne i32 (%struct.intel_th*)* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %37 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %36, i32 0, i32 0
  %38 = load i32 (%struct.intel_th*)*, i32 (%struct.intel_th*)** %37, align 8
  %39 = load %struct.intel_th*, %struct.intel_th** %4, align 8
  %40 = call i32 %38(%struct.intel_th* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %43 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_put(%struct.TYPE_4__* %43)
  %45 = load %struct.intel_th_driver*, %struct.intel_th_driver** %3, align 8
  %46 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @module_put(i32 %48)
  br label %50

50:                                               ; preds = %41, %14
  ret void
}

declare dso_local %struct.intel_th_driver* @to_intel_th_driver_or_null(i32) #1

declare dso_local %struct.intel_th* @to_intel_th(%struct.intel_th_device*) #1

declare dso_local i32 @intel_th_trace_disable(%struct.intel_th_device*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_4__*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
