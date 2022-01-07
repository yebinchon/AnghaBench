; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_trace_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_trace_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.intel_th_driver = type { i32 (%struct.intel_th_device.0*, i32*)* }
%struct.intel_th_device.0 = type opaque

@INTEL_TH_SWITCH = common dso_local global i64 0, align 8
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_th_trace_disable(%struct.intel_th_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_th_device*, align 8
  %4 = alloca %struct.intel_th_device*, align 8
  %5 = alloca %struct.intel_th_driver*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %7 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.intel_th_device* @to_intel_th_device(i32 %9)
  store %struct.intel_th_device* %10, %struct.intel_th_device** %4, align 8
  %11 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %12 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.intel_th_driver* @to_intel_th_driver(i32 %14)
  store %struct.intel_th_driver* %15, %struct.intel_th_driver** %5, align 8
  %16 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %17 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INTEL_TH_SWITCH, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %24 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %1
  %35 = load %struct.intel_th_driver*, %struct.intel_th_driver** %5, align 8
  %36 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %35, i32 0, i32 0
  %37 = load i32 (%struct.intel_th_device.0*, i32*)*, i32 (%struct.intel_th_device.0*, i32*)** %36, align 8
  %38 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %39 = bitcast %struct.intel_th_device* %38 to %struct.intel_th_device.0*
  %40 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %41 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %40, i32 0, i32 2
  %42 = call i32 %37(%struct.intel_th_device.0* %39, i32* %41)
  %43 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %44 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %43, i32 0, i32 1
  %45 = call i32 @pm_runtime_put(%struct.TYPE_2__* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.intel_th_device* @to_intel_th_device(i32) #1

declare dso_local %struct.intel_th_driver* @to_intel_th_driver(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
